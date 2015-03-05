'use strict'

module.exports = (grunt) ->

  appConfig =
    app:  'app',
    dist: 'dist',
    pub:  'public',
    test:  'test'

  grunt.initConfig

    app : appConfig

    