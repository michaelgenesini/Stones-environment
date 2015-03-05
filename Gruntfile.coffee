'use strict'

module.exports = (grunt) ->

  appConfig =
    app: 	'app',
    dist: 	'dist',
    pub: 	'public',
    test: 	'test'

  grunt.initConfig

    config : appConfig

    jade:
      options:
        pretty: true,
        compileDebug: true
      compile:
        files: [
          cwd: '<%= config.app %>',
          src: '**/*.jade',
          expand: true,
          dest: '<%= config.dist %>',
          ext: '.html' ]

    sass:
      options:
        style: "expanded",
        sourceMap: false
      app:
        files:
          '<%= config.dist %>/styles/style.css': '<%= config.app %>/styles/style.sass'

    coffeelint:
      app:
        files:
          src: ['<%= config.app %>/scripts/*.coffee']

    coffee:
      options:
        sourceMap: false
      app:
        files:
          '<%= config.dist %>/scripts/*.js': ['<%= config.app %>/scripts/*.coffee']

    copy:
      main:
        files: [
          {
            expand: true
            cwd: '<%= config.app %>/scripts'
            src: '**/*.js'
            dest: '<%= config.dist %>/scripts'},
          {
            expand: true
            cwd: '<%= config.app %>'
            src: ['*.ico','*.txt']
            dest: '<%= config.dist %>'},
          {
            expand: true
            cwd: '<%= config.pub %>/images'
            src: '**/*'
            dest: '<%= config.dist %>/images'},
          {
            expand: true
            cwd: '<%= config.pub %>/fonts'
            src: '**/*'
            dest: '<%= config.dist %>/fonts'}
        ]

    watch:
      jade:
        files: ['<%= config.app %>/**/*.jade']
        tasks: ['jade', 'notify:watch']

      coffee:
        files: ['<%= config.app %>/scripts/**/*.coffee']
        tasks: ['coffeelint', 'coffee', 'notify:watch']

      sass:
        files: ['<%= config.app %>/styles/**/*.sass']
        tasks: ['sass', 'notify:watch']

      copy:
        files: ['<%= config.pub %>/images/**/*','<%= config.pub %>/fonts/**/*']
        tasks: ['copy', 'notify:watch']

    connect:
      server:
        options:
          port: 3333
          base: '<%= config.dist %>'

    open:
      dev:
        path: 'http://localhost:3333/'
        app: 'Google Chrome'

    notify_hooks:
      enabled: true

    notify:
      watch:
        options:
          title: 'Task complete'
          message: 'Build files successfully updated'

      server:
        options:
          title: 'Server started'
          message: 'Server started at http://localhost:3333'

  grunt.loadNpmTasks 'grunt-notify'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-open'
  grunt.loadNpmTasks 'grunt-coffeelint'

  grunt.registerTask 'default', ['jade','coffeelint', 'coffee', 'sass','copy']
  grunt.registerTask 'serve', ['default', 'connect', 'notify:server', 'open:dev', 'watch']
  grunt.registerTask 'test', []