'use strict'

module.exports = (grunt) ->
  appConfig =
    dev: 'development',
    dist: 'public'

  grunt.initConfig

    app : appConfig
    
    jade:
      options:
        pretty: true
      compile:
        files: [
          cwd: '<%= app.dev %>',
          src: '**/*.jade',
          expand: true,
          dest: '<%= app.dist %>',
          ext: '.html' ]

    sass:
      options:
        style: "expanded",
        sourceMap: false
      app:
        files:
          '<%= app.dist %>/styles/style.css': '<%= app.dev %>/styles/style.sass'

    coffeelint:
      app:
        files:
          src: ['<%= app.dev %>/scripts/*.coffee']

    coffee:
      options:
        sourceMap: true
      app:
        files:
          '<%= app.dist %>/scripts/*.js': ['<%= app.dev %>/scripts/*.coffee']

    copy:
      main:
        files: [
          {
            expand: true
            cwd: '<%= app.dev %>/scripts'
            src: '**/*.js'
            dest: '<%= app.dist %>/scripts'},
          {
            expand: true
            cwd: '<%= app.dev %>/images'
            src: '**/*'
            dest: '<%= app.dist %>/images'},
          {
            expand: true
            cwd: '<%= app.dev %>/fonts'
            src: '**/*'
            dest: '<%= app.dist %>/fonts'},
          {
            expand: true
            cwd: '<%= app.dev %>'
            src: ['*.ico','*.txt']
            dest: '<%= app.dist %>'}
        ]

    watch:
      jade:
        files: ['<%= app.dev %>/**/*.jade']
        tasks: ['jade', 'notify:watch']

      coffee:
        files: ['<%= app.dev %>/scripts/*.coffee']
        tasks: ['coffeelint', 'coffee', 'notify:watch']

      sass:
        files: ['<%= app.dev %>/styles/*.sass']
        tasks: ['sass', 'notify:watch']

      build:
        files: ['<%= app.dev %>/styles/*.css', '<%= app.dev %>/*.html', '<%= app.dev %>/scripts/*.js']
        options:
          livereload: true

      copy:
        files: ['<%= app.dev %>/images/**/*','<%= app.dev %>/fonts/**/*','<%= app.dev %>/scripts/**/*']
        tasks: ['copy', 'notify:watch']

    connect:
      server:
        options:
          port: 3333
          base: '<%= app.dist %>'

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

  grunt.registerTask 'default', ['jade','coffeelint','sass','copy']
  grunt.registerTask 'serve', ['default', 'connect', 'notify:server', 'open:dev', 'watch']