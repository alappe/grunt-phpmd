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
      options:
        bin: 'vendor/bin/phpmd'

  grunt.loadTasks 'tasks'

  grunt.registerTask 'default', ['phpmd']

