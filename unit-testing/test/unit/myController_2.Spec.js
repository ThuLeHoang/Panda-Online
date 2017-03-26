describe("myController Unit testing #2", function () {
    
    // Arrange
    var mockScope;
    var controller;

    beforeEach(angular.mock.module("myapp"));

    beforeEach(angular.mock.inject(function ($controller, $rootScope) {
        mockScope = $rootScope.$new();
        
        controller = $controller("myController_2", {
            $scope: mockScope,
        });
    }));
    
    it("Creates variable", function () {
        expect(mockScope.showVid).toBeFalsy();
    })
    
});