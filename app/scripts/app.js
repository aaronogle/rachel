'use strict';

angular.module('rachelApp', [
  'ngRoute'
])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/webActivity', {
        templateUrl: 'views/webactivity.html',
        controller: 'WebactivityCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
