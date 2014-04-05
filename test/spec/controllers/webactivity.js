'use strict';

describe('Controller: WebactivityCtrl', function () {

  // load the controller's module
  beforeEach(module('rachelApp'));

  var WebactivityCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    WebactivityCtrl = $controller('WebactivityCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
