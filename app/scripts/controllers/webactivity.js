'use strict';

angular.module('rachelApp')
  .controller('WebactivityCtrl', ['$scope', '$rootScope', '$sce', '$location', function ($scope, $rootScope, $sce, $location) {
    $scope.activity = $rootScope.webActivity;
      
    $scope.trustSrc = function(src) {
		return $sce.trustAsResourceUrl(src);	
	}
      
  }]);
