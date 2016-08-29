
// pull in desired CSS/SASS files
require('./css/index.scss');
require('./css/hljs/solarized-dark.css');

// inject bundled Elm app into div#main

var Elm = require('../src/Main');
var app = Elm.Main.fullscreen();

app.ports.highlight.subscribe(function(n) {
  requestAnimationFrame(function () {
    var block = document.getElementById("elm");
    hljs.highlightBlock(block);
  });
});
