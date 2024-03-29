module.exports = function(grunt) {

  "use strict";

  grunt.initConfig({

    libFiles: [
      "src/**/*.purs",
      "bower_components/purescript-*/src/**/*.purs"
    ],

    clean: ["tmp", "output"],

    psc: {
      options: {
        noOpts: true
      },
      all: {
        src: ["<%=libFiles%>"],
        dest: 'bukkit-easyscript.js'
      }
    },

    docgen: {
      readme: {
        src: ["src/**/*.purs"],
        dest: "API.md"
      }
    },

    //
    // pscMake: {
    //   lib: {
    //     src: ["<%=libFiles%>"]
    //   },
    //   tests: {
    //     src: ["tests/Tests.purs", "<%=libFiles%>"]
    //   }
    // },

    dotPsci: ["<%=libFiles%>"],

    copy: [
      {
        expand: true,
        cwd: "output",
        src: ["**"],
        dest: "tmp/node_modules/"
      }, {
        src: ["js/index.js"],
        dest: "tmp/index.js"
      }
    ],

    execute: {
      tests: {
        src: "tmp/index.js"
      }
    }
  });

  grunt.loadNpmTasks("grunt-contrib-copy");
  grunt.loadNpmTasks("grunt-contrib-clean");
  grunt.loadNpmTasks("grunt-execute")
  grunt.loadNpmTasks("grunt-purescript");

  grunt.registerTask("make", ["psc", "docgen", "dotPsci"]);
  grunt.registerTask("default", ["clean", "make"]);
};
