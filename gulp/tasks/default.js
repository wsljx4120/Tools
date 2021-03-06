'use strict';

var gulp = require('gulp');
var runSequence = require('run-sequence');

module.exports = gulp.task('default', function () {
  if (release) {
    runSequence(
      'clean',
      ['index', 'styles', 'images', 'assets'],
      'browserify',
      serve ? ['minify', 'serve'] : ['minify']
    );
  } else {
    runSequence(
      'clean',
      ['index', 'styles', 'images', 'assets'],
      ['watchify', 'watch', 'serve']
    );
  }
});


