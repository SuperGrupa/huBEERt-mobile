BUILD_DIR = process.env.BUILD_DIR ? "www"

module.exports = (config) ->
  config.set
    basePath: '../../'
    frameworks: ['mocha', 'chai', 'chai-as-promised', 'sinon-chai', 'chai-things']

    # list of files / patterns to load in the browser
    files: [
      "#{BUILD_DIR}/js/vendor.js"
      "assets/components/angular-mocks/angular-mocks.js"

      "test/unit/tests-config.coffee"

      # "#{BUILD_DIR}/js/app.js"
      # This is a concatenated list of all scripts from gulpfile.coffee
      # (we need to keep it up to date with it).
      "#{BUILD_DIR}/js/app_templates.js"
      'app/src/config/**/*.coffee'
      'config/config.js'
      'app/src/routes.coffee'
      'app/src/*/**/*.module.coffee'
      'app/src/*/**/*.service.coffee'
      'app/src/*/**/*.factory.coffee'
      'app/src/*/**/*.controller.coffee'
      'app/src/*/**/*.directive.coffee'

      "test/unit/helpers/**/*.coffee"
      "test/unit/**/*.coffee"
    ]

    exclude: [
      "test/unit/karma.conf.coffee"
    ]

    # use dots reporter, as travis terminal does not support escaping sequences
    # possible values: 'dots', 'progress', 'osx', 'ubuntu'
    # CLI --reporters progress
    reporters: ['osx', 'dots']

    singleRun: false

    # f.e. Chrome, PhantomJS
    browsers: ['PhantomJS']

    preprocessors:
      '**/*.coffee': ['coffee']

    coffeePreprocessor:
      options:
        bare: false
        sourceMap: true

      # transformPath: (path) ->
      #   path.replace(/\.coffee$/, '.js')
