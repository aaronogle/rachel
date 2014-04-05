'use strict';


var gui = require('nw.gui');
var win = gui.Window.get();

win.on('new-win-policy', function (frame, url, policy) {
	policy.ignore();
});

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
