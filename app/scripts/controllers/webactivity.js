'use strict';

angular.module('rachelApp')
  .controller('WebactivityCtrl', ['$scope', '$rootScope', '$sce', '$location', '$document', function ($scope, $rootScope, $sce, $location, $document) {
	var config = require('./config.json');
	  
	$scope.sites = config.sites;
	$scope.whitelist = config.whitelist;
	  
    $scope.activity = $rootScope.webActivity;
      
    $scope.trustSrc = function(src) {
		return $sce.trustAsResourceUrl(src);	
	}
	
	$scope.checkURL = function (location) {
		console.log($scope.whitelist);
		console.log('location', location.host, location.href);
		
		var wildcard = '';
		var host = location.host.split('.');

		if (host.length > 2) {
			wildcard = host;
			wildcard[0] = '*';
			wildcard = wildcard.join('.');
			host = host.join('.');
		} else {
			host = host.join('.');
			wildcard = '*.'+host;
		}
		
		if ($scope.whitelist.indexOf(host) > -1 || $scope.whitelist.indexOf(wildcard) > -1) {
			console.log('matches');
		} else {
			$scope.$apply(function() {
				$location.path('/');
			});
		}
		
	}
      
  }]);

function urlChange (location) {
	var scope = angular.element('#activityFrame').scope();
	if (typeof scope.checkURL !== 'undefined') {
		scope.checkURL(location);
	}
}
