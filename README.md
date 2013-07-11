# grunt-phpmd

> Grunt plugin for running [PHP Mess Detector](http://phpmd.org).

_This plugin is developed for Grunt `0.4.0` and is not tested for backward compatibility with Grunt `0.3.x`._

## Getting Started

1. Install this grunt plugin with the follwing command:

```shell
npm install grunt-phpmd --save-dev
```

2. [Install PHPMD](http://phpmd.org/download/index.html)

3. Add this to your project's `Gruntfile.js`:

```js
grunt.loadNpmTasks('grunt-phpmd');
```

## PHPMD task

_Run this task with the `grunt phpmd` command._

_This task is a [multi task][] so any targets, files and options should be specified according to the [multi task][] documentation._

[multi task]: https://github.com/gruntjs/grunt/wiki/Configuring-tasks

### Usage Example

```js
phpmd: {
  application: {
	  dir: 'application'
	}
	options: {
	  rulesets: 'codesize'
	}
}
```

### Target Properties

#### dir
Type: `String`

The file or directory where phpmd should search for files.

### Options
#### bin
Type: `String`
Default: `'phpmd'`

The binary name if it is in your PATH or the full path if not.

#### reportFormat
Type: `String`
Default: `'xml'`

The type of report to generate. PHPMD supports `xml`, `text` and `html`.

#### reportFile
Type: `String`
Default: `false`

Set a path and filename here to write to a file, otherwise it will write to stdout.

#### suffixes
Type: `String`
Default: `false`

Set a comma-separated string of valid source code filename extensions.

#### exclude
Type: `String`
Default: `false`

Set a comma-separated string of patterns that are used to ignore directories.

#### minimumPriority
Type: `Number`
Default: `false`

Rule priority threshold: rules with lower priority than this will not be used.

#### strict
Type: `Boolean`
Default: `false`

Also report those nodes with a @SuppressWarnings annotation.

#### rulesets
Type: `String`
Default: `'codesize,unusedcode,naming'`

A ruleset filename or a comma-separated string of rulesetfilenames. Make sure to have no spaces between the items!

#### maxBuffer
Type: `Number`
Default: `200*1024`

Override the maxBuffer-Size of nodejs's exec() function if you expect a long output on stdout.
