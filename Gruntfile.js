

module.exports = function (grunt) {
  "use strict";
    grunt.initConfig({
		browserify: {
      options:{
        browserifyOptions:{
          debug: true
        }
      },
			libs: {
				options: {
					shim: {
						angular: { path: './bower_components/angular/angular.js:', exports: 'angular'}
					},
					alias: [
             "./bower_components/angular/angular.js:angular"
					]
				},
				src: ['none.js'],
				dest: 'dist/vendor.js'
			},
			app: {
				src: ['app.js'],
				dest: 'dist/bunapp.js',
				options: {
					shim: {
						angular: { path: './bower_components/angular/angular.js:', exports: 'angular'}
					},
					alias: [
             "./bower_components/angular/angular.js:angular"
					],
					external: [
             "./bower_components/angular/angular.js:angular"
					]
				}
			}
		}


   });
  grunt.loadNpmTasks('grunt-browserify');

};



