'use strict';

(function () {

  const colors = ['blue', 'red', 'black', 'yellow'];

  class CroquetDeadnessBoard extends HTMLElement {
    #balls = {};

    constructor() {
      // establish prototype chain
      super();

      // create shadow root
      const shadowRoot = this.attachShadow({ mode: 'open' });

      // add default styles
      const style = document.createElement('style');
      shadowRoot.appendChild(style);
      style.textContent = `
      :host {
        display: block;
      }
      div.container {
        transform: rotate3d(0);
        display: grid;
        box-sizing: border-box;
        height: 100%;
        grid-template-rows: [blue] 1fr [red] 1fr [black] 1fr [yellow] 1fr;
        grid-template-columns: [wicket] 1.5fr [blue] 1fr [red] 1fr [black] 1fr [yellow] 1fr;
        grid-gap: 2rem;
        padding: 4rem;
      }
      div.wicket {
        font-size: 6rem;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: red;
      }
      div.opponent {
        backface-visibility: hidden;
      }
      div.flipped {
        transform: rotate3d(0, 1, 0, 180deg);
      }
      div.blue {
        background-color: blue;
        color: white;
      }
      div.red {
        background-color: red;
        color: white;
      }
      div.black {
        background-color: black;
        color: white;
      }
      div.yellow {
        background-color: yellow;
        color: black;
      }
      `;

      // create the container and add
      this.container = document.createElement('div');
      this.container.classList.add('container');
      shadowRoot.appendChild(this.container);

      // add a row for each ball
      for (const ballColor of colors) {

        // add an entry to the map for this ball
        const ballEntry = {};
        this.#balls[ballColor] = ballEntry;

        // add the wicket element
        const wicketElement = document.createElement('div');
        wicketElement.classList.add('wicket', ballColor);
        wicketElement.setAttribute('grid-row', ballColor);
        wicketElement.setAttribute('grid-column', 'wicket');
        ballEntry.wicketElement = wicketElement;
        this.container.appendChild(wicketElement);

        // add the opponent elements
        ballEntry.opponentElements = {};
        for (const opponentColor of colors) {
          const frontElement = document.createElement('div');
          frontElement.setAttribute('grid-row', ballColor);
          frontElement.setAttribute('grid-column', opponentColor);
          const backElement = document.createElement('div');
          backElement.setAttribute('grid-row', ballColor);
          backElement.setAttribute('grid-column', opponentColor);
          if (opponentColor != ballColor) {
            frontElement.classList.add(opponentColor, 'opponent');
            backElement.classList.add('opponent');
          }
          ballEntry.opponentElements[opponentColor] = { frontElement, backElement };
          this.container.appendChild(frontElement);
          // this.container.appendChild(backElement);
        }
      }

      // bind methods
      this.updateModel = this.updateModel.bind(this);
    }

    connectedCallback() {
      // if model is supplied, update it
      if (this.attributes.model) {
        const model = JSON.parse(this.attributes.model.value);
        this.updateModel(model);
      }
    }

    updateModel(model) {
      for (const ballColor in model.balls) {
        const ball = model.balls[ballColor];
        const wicketElement = this.shadowRoot.querySelector(`div.${ballColor}.wicket`);
        wicketElement.textContent = (ball.clearedWicketIndex ?? 0).toString();
      }
    }
  }

  customElements.define('croquet-deadness-board', CroquetDeadnessBoard);
})();