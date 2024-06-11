'use strict';

(function () {

  // attributes
  const model = 'model';
  const blue = 'blue';
  const red = 'red';
  const black = 'black';
  const yellow = 'yellow';
  const playerWidth = 'player-width';
  const gridGap = 'grid-gap';
  const transitionTime = 'transition-time';
  const borderWidth = 'border-width';
  const shadowLength = 'shadow-length';
  const shadowRadius = 'shadow-radius';

  // the balls, in order
  const colors = [blue, red, black, yellow];

  // custom attributes with defaults
  const customAttributes = {};
  customAttributes[model] = null;
  customAttributes[blue] = blue;
  customAttributes[red] = red;
  customAttributes[black] = black;
  customAttributes[yellow] = yellow;
  customAttributes[playerWidth] = '1.5fr';
  customAttributes[gridGap] = '5vh';
  customAttributes[transitionTime] = '2s';
  customAttributes[borderWidth] = '0.5rem';
  customAttributes[shadowLength] = '0.5rem';
  customAttributes[shadowRadius] = '0.5rem';

  // CroquetDeadnessBoard custom element
  class CroquetDeadnessBoard extends HTMLElement {

    // we watch for changes on all attributes
    static observedAttributes = Object.keys(customAttributes);

    // stylesheets
    #baseStyleSheet;
    #connectedStyleSheet;

    // track connected status
    #connected = false;

    constructor() {
      super();
      const shadowRoot = this.attachShadow({ mode: 'open' });

      // create a stylesheet add to the shadow root
      this.#baseStyleSheet = new CSSStyleSheet();
      this.#connectedStyleSheet = new CSSStyleSheet();
      shadowRoot.adoptedStyleSheets = [this.#baseStyleSheet, this.#connectedStyleSheet];

      // set the base style sheet
      this.#baseStyleSheet.replaceSync(`      
      :host {
        display: block;
        visibility: hidden;
        overflow: hidden;
      }
      div.container {
        transform: rotate3d(0, 0, 0, 0deg);
        display: grid;
        box-sizing: border-box;
        height: 100%;
        grid-template-rows: [blue] 1fr [red] 1fr [black] 1fr [yellow] 1fr;
      }
      div.player {
        height: 100%;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
      }
      div.card {
        height: 100%;
        width: 100%;
        position: relative;
        display: inline-block;
      }
      div.face {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        box-sizing: border-box;
        backface-visibility: hidden;
      }
      div.face.front {
        transform: rotate3d(1, 1, 0, 0deg);
      }
      div.dead > div.face.front {
        transform: rotate3d(1, 1, 0, 180deg);
      }
      div.face.back {
        transform: rotate3d(1, 1, 0, 180deg);
      }
      div.dead > div.face.back {
        transform: rotate3d(1, 1, 0, 360deg);
      }
      div.face.front {
        border-style: solid;
        background-color: white;
      }
      div.blue {
        color: white;
      }
      div.red {
        color: white;
      }
      div.black {
        color: white;
      }
      div.yellow {
        color: black;
      }      
      `);

      // create the container element
      const container = document.createElement('div');
      container.classList.add('container');
      shadowRoot.appendChild(container);

      // add a row for each ball
      for (const playerColor of colors) {

        // add the player element
        const playerElement = document.createElement('div');
        playerElement.classList.add('player', playerColor);
        playerElement.setAttribute('grid-row', playerColor);
        playerElement.setAttribute('grid-column', 'player');
        container.appendChild(playerElement);

        // process each player color
        for (const deadnessColor of colors) {

          // add the deadness element
          const deadnessElement = document.createElement('div');
          deadnessElement.setAttribute('grid-row', playerColor);
          deadnessElement.setAttribute('grid-column', deadnessColor);
          container.appendChild(deadnessElement);

          // make into a card with content for colors other than the player's
          if (deadnessColor != playerColor) {

            // make this element into a card
            deadnessElement.classList.add('card', `${playerColor}-on-${deadnessColor}`);

            // add the card faces
            const frontFaceElement = document.createElement('div');
            frontFaceElement.classList.add('face', 'front', deadnessColor);
            deadnessElement.appendChild(frontFaceElement);
            const backFaceElement = document.createElement('div');
            backFaceElement.classList.add('face', 'back', deadnessColor);
            deadnessElement.appendChild(backFaceElement);
          }
        }
      }
    }

    #getAttribute(name) {
      const value = this.getAttribute(name)
      return value ? value : customAttributes[name];
    }

    #updateStyle() {
      // if not connected, clear the connected stylesheet
      if (!this.#connected) {
        this.#connectedStyleSheet.replaceSync('');
      }

      // otherwise, populate it
      const gridGapValue = this.#getAttribute(gridGap);
      const playerWidthValue = this.#getAttribute(playerWidth);
      const transitionTimeValue = this.#getAttribute(transitionTime);
      const blueValue = this.#getAttribute(blue);
      const blackValue = this.#getAttribute(black);
      const yellowValue = this.#getAttribute(yellow);
      const redValue = this.#getAttribute(red);
      const borderWidthValue = this.#getAttribute(borderWidth);
      const shadowLengthValue = this.#getAttribute(shadowLength);
      const shadowRadiusValue = this.#getAttribute(shadowRadius);

      this.#connectedStyleSheet.replaceSync(`
      :host {
        visibility: visible !important;
      }
      div.container {
        padding: calc(${gridGapValue} / 2);
        grid-template-columns: [player] ${playerWidthValue} [blue] 1fr [red] 1fr [black] 1fr [yellow] 1fr;
        grid-gap: calc(${gridGapValue} / 2);
      }
      div.card {
        filter: drop-shadow(${shadowLengthValue} ${shadowLengthValue} ${shadowRadiusValue});
      }
      div.face {
        transition: transform ${transitionTimeValue};
      }
      div.face.front {
        border-width: ${borderWidthValue};
        color: ${blackValue};
      }
      div.blue {
        background-color: ${blueValue};
        border-color: ${blueValue};
      }
      div.red {
        background-color: ${redValue};
        border-color: ${redValue};
      }
      div.black {
        background-color: ${blackValue};
        border-color: ${blackValue};
      }
      div.yellow {
        background-color: ${yellowValue};
        border-color: ${yellowValue};
      }      
      `);
    }

    #updateModel() {

      // read and parse the model
      const modelJson = this.#getAttribute(model);
      const modelValue = modelJson ? JSON.parse(modelJson) : null;

      // modify the markup
      for (const ballColor of colors) {
        // update the cleared wicket indicator
        const element = this.shadowRoot.querySelector(`div.player.${ballColor} `);
        element.textContent = modelValue ? modelValue.clearedWickets[ballColor] : 0;

        // update the deadness of all the balls
        for (const deadnessColor of colors) {
          if (ballColor != deadnessColor) {
            const className = `${ballColor}-on-${deadnessColor}`;
            const element = this.shadowRoot.querySelector(`div.card.${className}`);
            if (modelValue && modelValue.deadnessClasses.includes(className)) {
              element.classList.add('dead');
            } else {
              element.classList.remove('dead');
            }
          }
        }
      }
    }

    connectedCallback() {
      this.#connected = true;
      this.#updateModel();
      this.#updateStyle();
    }

    disconnectedCallback() {
      this.#connected = false;
      this.#updateStyle();
    }

    attributeChangedCallback(name, oldValue, newValue) {
      switch (name) {
        case 'model':
          this.#updateModel();
        default:
          this.#updateStyle();
      }
    }
  }

  customElements.define('croquet-deadness-board', CroquetDeadnessBoard);

})();