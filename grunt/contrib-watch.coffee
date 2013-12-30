module.exports = (grunt) ->
  grunt.config 'watch',
    coffee:
      files: [
        '<%= coffee.dev.src %>'
      ]
      tasks: [
        'coffeelint'
        'coffee:dev'
        'docco'
      ]
      options:
        livereload: true
    compass:
      files: [
        '<%= compass.dev.options.sassDir %>/**/*.sass'
        '<%= compass.dev.options.imagesDir %>/**/*.png'
      ]
      tasks: [
        'compass:dev'
      ]
    css:
      files: [
        '<%= compass.dev.options.sassDir %>/styles.css'
        '<%= compass.dev.options.imagesDir %>/**/*.png'
      ]
      options:
        livereload: true
    jade:
      files: [
        '*.jade'
        'assets/partial/**/*.jade'
      ]
      tasks: [
        'jade:dev'
      ]
      options:
        livereload: true

  grunt.loadNpmTasks 'grunt-contrib-watch'