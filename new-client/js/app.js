var app = angular.module('rachel', ['ngAnimate']);
app.config(function($controllerProvider) {
	app.controller = $controllerProvider.register;
});

angular.module('rachel').controller('browser', ['$rootScope', '$scope', '$log', '$sce', function($rootScope, $scope, $log, $sce) {
	var config = require('./config.js');
	$scope.sites = config.sites;
	
	$scope.loadActivity = function (url) {
		$scope.activity = url;
	}
	
	$scope.trustSrc = function(src) {
		return $sce.trustAsResourceUrl(src);	
	}
	
	$scope.home = function () {
		$scope.activity = false;	
	}
}]);