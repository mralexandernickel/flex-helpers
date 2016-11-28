module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON "package.json"
    sass:
      dist:
        files:
          "<%= pkg.name %>.css": "<%= pkg.name %>.sass"
      demo:
        files:
          "demo.css": "demo.sass"
    cssmin:
      dist:
        files:
          "<%= pkg.name %>.min.css": "<%= pkg.name %>.prefixed.css"
      demo:
        files:
          "demo.min.css": "demo.prefixed.css"
    sasslint:
      options:
        configFile: ".sass-lint.yml"
      target: ["./*.sass"]
    autoprefixer:
      dist:
        src: "<%= pkg.name %>.css"
        dest: "<%= pkg.name %>.prefixed.css"
      demo:
        src: "demo.css"
        dest: "demo.prefixed.css"

  grunt.loadNpmTasks "grunt-sass"
  grunt.loadNpmTasks "grunt-contrib-cssmin"
  grunt.loadNpmTasks "grunt-sass-lint"
  grunt.loadNpmTasks "grunt-autoprefixer"

  grunt.registerTask "default", ["sasslint","sass"]
  grunt.registerTask "dist", ["sasslint","sass","autoprefixer","cssmin"]