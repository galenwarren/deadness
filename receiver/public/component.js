'use strict';

(function () {

  // attributes
  const model = 'model';
  const blue = 'blue';
  const red = 'red';
  const black = 'black';
  const yellow = 'yellow';
  const playerWidth = 'player-width';
  const playerFontSize = 'player-font-size';
  const gridGap = 'grid-gap';
  const transitionTime = 'transition-time';

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
  customAttributes[playerFontSize] = '5vh';
  customAttributes[gridGap] = '5vh';
  customAttributes[transitionTime] = '2s';

  // CroquetDeadnessBoard custom element
  class CroquetDeadnessBoard extends HTMLElement {

    // we watch for changes on these attributes
    static observedAttributes = Object.keys(customAttributes);

    // stylesheet
    #styleSheet;

    constructor() {
      super();
      const shadowRoot = this.attachShadow({ mode: 'open' });

      // create a stylesheet add to the shadow root
      this.#styleSheet = new CSSStyleSheet();
      shadowRoot.adoptedStyleSheets.push(this.#styleSheet);

      // initially just set host to block and hidden
      this.#styleSheet.replaceSync(`      
      :host {
        display: block;
        visibility: hidden;
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

        // add the deadness element
        for (const deadnessColor of colors) {
          const element = document.createElement('div');
          element.setAttribute('grid-row', playerColor);
          element.setAttribute('grid-column', deadnessColor);
          if (deadnessColor != playerColor) {
            element.classList.add('deadness', `${playerColor}-on-${deadnessColor}`);
            const frontFaceElement = document.createElement('div');
            frontFaceElement.classList.add('face', 'front');
            element.appendChild(frontFaceElement);
            const backFaceElement = document.createElement('div');
            backFaceElement.classList.add('face', 'back', deadnessColor);
            element.appendChild(backFaceElement);
          }
          container.appendChild(element);
        }
      }
    }

    #getAttribute(name) {
      const value = this.getAttribute(name)
      return value ? value : customAttributes[name];
    }

    #updateStyle(visibility) {
      const gridGapValue = this.#getAttribute(gridGap);
      const playerWidthValue = this.#getAttribute(playerWidth);
      const playerFontSizeValue = this.#getAttribute(playerFontSize);
      const transitionTimeValue = this.#getAttribute(transitionTime);
      const blueValue = this.#getAttribute(blue);
      const blackValue = this.#getAttribute(black);
      const yellowValue = this.#getAttribute(yellow);
      const redValue = this.#getAttribute(red);

      this.#styleSheet.replaceSync(`
      :host {
        display: block;
        visibility: ${visibility};
      }
      div.container {
        transform: rotate3d(0);
        display: grid;
        box-sizing: border-box;
        height: 100%;
        grid-template-rows: [blue] 1fr [red] 1fr [black] 1fr [yellow] 1fr;
        grid-template-columns: [player] ${playerWidthValue} [blue] 1fr [red] 1fr [black] 1fr [yellow] 1fr;
        grid-gap: ${gridGapValue};
        padding: ${gridGapValue};
      }
      div.player {
        font-size: ${playerFontSizeValue};
        display: flex;
        justify-content: center;
        align-items: center;
      }

      div.deadness {
        position: relative;
      }

      div.face {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        backface-visibility: hidden;
        transition: transform ${transitionTimeValue};
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
        transform: rotate3d(1, 1, 0, 0deg);
      }

      div.face.front {
        background-color: whitesmoke;
        color: ${blackValue};
      }
      
      div.blue {
        background-color: ${blueValue};
        color: white;
      }
      
      div.red {
        background-color: ${redValue};
        color: white;
      }
      
      div.black {
        background-color: ${blackValue};
        color: white;
      }
      
      div.yellow {
        background-color: ${yellowValue};
        color: black;
      }      
      `);
    }

    #updateModel() {

      // read and parse the model
      const modelJson = this.#getAttribute(model);
      if (!modelJson) {
        throw new Error('model attribute is required');
      }
      const modelValue = JSON.parse(modelJson);

      // modify the markup
      for (const ballColor of colors) {
        // update the cleared wicket indicator
        const element = this.shadowRoot.querySelector(`div.player.${ballColor} `);
        element.textContent = modelValue.clearedWickets[ballColor];

        // update the deadness of all the balls
        for (const deadnessColor of colors) {
          if (ballColor != deadnessColor) {
            const className = `${ballColor}-on-${deadnessColor}`;
            const element = this.shadowRoot.querySelector(`div.deadness.${className}`);
            if (modelValue.deadnessClasses.includes(className)) {
              element.classList.add('dead');
            } else {
              element.classList.remove('dead');
            }
          }
        }
      }
    }

    connectedCallback() {
      this.#updateModel();
      this.#updateStyle('visible');
    }

    disconnectedCallback() {
      this.#updateStyle('hidden');
    }

    attributeChangedCallback(name, oldValue, newValue) {
      switch (name) {
        case 'model':
          this.#updateModel();
        default:
          this.#updateStyle('visible');
      }
    }
  }

  customElements.define('croquet-deadness-board', CroquetDeadnessBoard);

})();