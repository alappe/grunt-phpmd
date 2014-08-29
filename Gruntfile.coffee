#
# grunt-phpmd
#
#
'use strict'

module.exports = (grunt) ->
  grunt.initConfig
    phpmd:
      test:
        dir: 'test'
      test_ignore_warning_code:
        options:
          ignoreWarningCode: false
        dir: 'test'
      options:
        bin: 'vendor/bin/phpmd'

  grunt.loadTasks 'tasks'

  grunt.registerTask 'default', ['phpmd']

