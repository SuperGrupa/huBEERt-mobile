gulp                = require 'gulp'
gutil               = require 'gulp-util'
argv                = require('yargs').argv
fs                  = require 'fs'
ngConstant          = require 'gulp-ng-constant'
rename              = require 'gulp-rename'

gulp.task 'config', ->
  gutil.log gutil.colors.blue 'creating config file'
  env = argv.env || 'development'
  gutil.log gutil.colors.yellow "Setting config file for: "
  gutil.log gutil.colors.red "#{env}"
  filename = env + '.json'
  settings = JSON.parse(fs.readFileSync('config/' + filename, 'utf8'))

  gulp.src 'config/' + filename
    .pipe(ngConstant())
    .pipe(rename('config.js'))
    .pipe(gulp.dest('config'))
