'use strict'

# Define My Controller
angular
.module('myApp')
.controller 'AboutController',
['$scope'
($scope) ->
  # Attach data types
  $scope.myThing = {}
  $scope.myArray = []
  $scope.myBoolean = yes
  $scope.myDate = new Date()
  $scope.myMethod = ->
    'Not implemented'
  $scope.myNull = null
  $scope.myNumber = 1337
  $scope.myObject = {}
  $scope.myRegExp = /\s/
  $scope.myString = 'test'
  $scope.myUndefined = undefined
]