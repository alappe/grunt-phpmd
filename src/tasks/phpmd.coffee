###
grunt-phpmd

Copyright (c) 2013 Andreas Lappe
http://kaeufli.ch
Licensed under the BSD license.
###

module.exports = (grunt) ->
  phpmd = (require './lib/phpmd').init grunt

  grunt.registerMultiTask 'phpmd', 'Run phpmd', ->
    phpmd.setup @
    phpmd.run()
