define([
  'config',
  'angular',
  'controller/header/header-controller'
], function(cfg, A) {
  describe('Header controller', function() {
    var $scope,
        createController;

    beforeEach(module(cfg.ngApp));
    beforeEach(inject(function($injector) {
      var $controller = $injector.get('$controller'),
          $rootScope = $injector.get('$rootScope');

      $scope = $rootScope.$new();

      createController = function() {
        $controller('HeaderController', {
          $scope: $scope
        });
      };
    }));

    it('should add the menu partial', function() {
      var controller = createController();

      expect($scope.menuPartial).toBeDefined();
    });
  });
});
