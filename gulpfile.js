var gulp = require('gulp');
var browserSync = require('browser-sync').create();


gulp.task('reload', function() {
  browserSync.stream();
});

gulp.task('watch', function() {
  browserSync.init({
    server: {
      baseDir: "app"
    }
  });

  gulp.watch(['app/views/**/*.slim'], ['reload']);
  gulp.watch(['app/views/**/*.slim'], ['reload']);
});

gulp.task('default', ['watch']);