(function(){

	'use strict';

	angular.module('MyApp', [
		'ngRoute'
	])
	.config(function ($routeProvider) {
		$routeProvider
			.when('/', {
				templateUrl: 'partials/home.html',
				controller: 'MainController',
				controllerAs: 'main'
			})
			.when('/library',{
				templateUrl: 'partials/library.html',
				controller: 'MainController',
				controllerAs: 'main'
			})
			.when('/about',{
				templateUrl: 'partials/about.html',
				controller: 'MainController',
				controllerAs: 'main'
			})
			.when('/contacts',{
				templateUrl: 'partials/contacts.html',
				controller: 'MainController',
				controllerAs: 'main'
			})
			.otherwise({
				redirectTo: '/'
			});
	});
})();