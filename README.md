
# Stones front-end environment
<p align="center">
  <img src="https://copy.com/H717QhjtU7PhmYNt" alt="stones framework"/>
</p>
This is a simple grunt workflow that help developers to write less code and to quickly build front-end application.
## Usage
Install dependencies.
```shell
$ git clone https://github.com/
$ npm install
$ bower install
```
Preview an app you have generated (with Livereload).
```shell
$ grunt serve
```
Run the unit tests for an app.
```shell
$ grunt test
```
Build an optimized, production-ready version of your app.
```shell
$ grunt
```

##Folder layout
| File/folder 		| Description           
| ----------------- |:-------------
| app/	      		| Contains your Angular application’s code.
| dist/	      		| Contains the distributable output of your application. Deploy this to your server!
| public/      		| This folder will be copied verbatim into the root of your built application. Use this for assets that don’t have a build step, such as images or fonts.
| tests/	      	| Includes unit and integration tests for your app, as well as various helpers to load and run your tests.
| bower_components/	| Your dependencies installed with Bower.
| vendor/	      	| Your external dependencies not installed with Bower or Npm.
| .gitignore	 	| Git configuration for ignored files.
| Grunt.coffee	    | Grunt file for your workflow
| bower.json		| Bower configuration and dependency list.
| .bowerrc	 		| Bower can be configured using JSON in a .bowerrc file.
| package.json		| NPM configuration. Mainly used to list the dependencies needed for asset compilation.
