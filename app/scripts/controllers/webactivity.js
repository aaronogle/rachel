'use strict';

angular.module('rachelApp')
  .controller('WebactivityCtrl', ['$scope', '$rootScope', '$sce', function ($scope, $rootScope, $sce) {
    $scope.activity = $rootScope.webActivity;
      
    $scope.trustSrc = function(src) {
		return $sce.trustAsResourceUrl(src);	
	}
  }]);
