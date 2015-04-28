'use strict'

# Declare module dependencies
dependencies = [
  'ngRoute'
]

# Configure app
config = ($routeProvider) ->
  $routeProvider
  .when '/',
    # Use the same partial views for for all languages
    templateUrl: '../views/home.html'
    controller: 'HomeController'
    controllerAs: 'homeCtrl'
  .when '/about',
    # Use the same partial views for for all languages
    templateUrl: '../views/about.html'
    controller: 'AboutController'
    controllerAs: 'aboutCtrl'
  .otherwise
  	# Redirect all other route to /
    #redirectTo: '/'
    templateUrl: '../404.html'

# Create app module and configure it
angular
.module('myApp', dependencies)
.config [
  '$routeProvider'
  config
]