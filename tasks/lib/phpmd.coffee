###
grunt-phpmd

Copyright (c) 2013 Andreas Lappe
http://kaeufli.ch
Licensed under the BSD license.
###

path = require 'path'
exec = (require 'child_process').exec

exports.init = (grunt) ->

  exports = config = {}
  cmd = done = null
  defaults =
    bin: 'phpmd'
    # Can be xml, text or html
    reportFormat: 'xml'
    # Path and filename, otherwise STDOUT is used
    reportFile: false
    suffixes: false
    exclude: false
    minimumPriority: false
    strict: false
    rulesets: 'codesize,unusedcode,naming'
    maxBuffer: 200*1024

  buildCommand = (dir) ->
    cmd = "#{path.normalize config.bin} #{dir} #{config.reportFormat} #{config.rulesets}"
    cmd += " --minimumpriority #{config.minimumPriority}" if config.minimumPriority
    cmd += " --reportfile #{config.reportFile}" if config.reportFile
    cmd += " --suffixes #{config.suffixes}" if config.suffixes
    cmd += " --exclude #{config.exclude}" if config.exclude
    cmd += " --strict" if config.strict
    cmd

  exports.setup = (runner) ->
    dir = path.normalize runner.data.dir
    config = runner.options defaults
    cmd = buildCommand dir
    grunt.log.writeln "Starting phpmd (target: #{runner.target.cyan}) in #{dir.cyan}"
    grunt.verbose.writeln "Execute: #{cmd}"
    done = runner.async()

  exports.run = ->
    cmdOptions = maxBuffer: config.maxBuffer
    exec cmd, cmdOptions, (err, stdout, stderr) ->
      grunt.log.write stdout if stdout
      if err
        # As documented on # http://phpmd.org/documentation/index.html#exit-codes
        grunt.fatal err if err.code isnt 2
      done()

  exports
