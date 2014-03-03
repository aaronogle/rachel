'use strict';

angular.module('rachelApp')
  .controller('MainCtrl', ['$scope', '$rootScope', function ($scope, $rootScope) {
    var config = require('./config.json');
	
	$scope.sites = config.sites;
      
    $scope.loadActivity = function (url) {
        $rootScope.webActivity = url;
    }
  }]);
