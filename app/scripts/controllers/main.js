'use strict';

angular.module('rachelApp')
  .controller('MainCtrl', ['$scope', '$rootScope', '$location', function ($scope, $rootScope, $location) {
    var config = require('./config.json');
	
	$scope.sites = config.sites;
      
    $scope.loadActivity = function (url) {
        $rootScope.webActivity = url;
        $location.path('/webactivity');
    }
  }]);
