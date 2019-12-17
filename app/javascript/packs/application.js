import "bootstrap";
import "uikit"

import Granim  from "granim";

// behavior side navbar
const toggling = document.getElementById('toggle');
if (toggling) {
  toggling.addEventListener('click', function() {
    document.querySelector('.sidebar').classList.toggle('visible');
  });
}

// behavior gradient tracking button

var btn = document.querySelector('.mouse-cursor-gradient-tracking')
if (btn) {
  btn.onmousemove = function(e) {
    var rect = e.target.getBoundingClientRect()
    var x = e.clientX - rect.left
    var y = e.clientY - rect.top
    btn.style.setProperty('--x', x + 'px')
    btn.style.setProperty('--y', y + 'px')
  }
}

// states and behavior of background gradient

const hello = new Granim({
    element: '#canvas-interactive',
    name: 'interactive-gradient',
    elToSetClassOn: '.canvas-interactive-wrapper',
    direction: 'diagonal',
    isPausedWhenNotInView: true,
    stateTransitionSpeed: 500,
    states : {
        "default-state": {
            gradients: [
                ['#B3FFAB', '#12FFF7'],
                ['#ADD100', '#7B920A'],
                ['#1A2980', '#26D0CE']
            ],
            transitionSpeed: 20000
        },
        "violet-state": {
            gradients: [
                ['#9D50BB', '#6E48AA'],
                ['#4776E6', '#8E54E9']
            ],
            transitionSpeed: 20000
        },
        "orange-state": {
            gradients: [ ['#FF4E50', '#F9D423'] ],
            loop: false
        }
    }
});

const element = document.getElementById("granim-canvas")
console.log(element)
// console.log(hello)

