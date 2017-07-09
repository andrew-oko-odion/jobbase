// import 'jquery-circle-progress/dist/circle-progress.min.js';
// import * as circleProgress from 'circle-progress';

//  window.circleProgress = circleProgress
require('jquery-circle-progress');
var $ = require('jquery');

$('#circle').circleProgress({
  value: 0.75
});
