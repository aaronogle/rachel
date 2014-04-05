'use strict';

angular.module('rachelApp')
  .controller('ToolbarCtrl', ['$scope', '$location', function ($scope, $location) {
    $scope.home = function () {
        $location.path('/');
        $scope.webActivity = false;
    }
    
    $scope.reload = function () {
        $location.reload();   
    }
    
    $scope.back = function () {
        window.history.back();
    }
  }]);
