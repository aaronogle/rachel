'use strict';

angular.module('rachelApp', ['ngRoute'])
  .config(['$routeProvider', function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/webactivity', {
        templateUrl: 'views/webactivity.html',
        controller: 'WebactivityCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  }]);
