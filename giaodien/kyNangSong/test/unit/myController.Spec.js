describe("myController Unit Testing", function() {
	var mockS, control;

	beforeEach(angular.mock.module("myapp"));

	beforeEach(angular.mock.inject(function ($rootScope, $controller) {
		mockS = $rootScope.$new();
		control = $controller("myController", {
			$scope: mockS
		});
	}));

	it("Create Array", function () {
		expect(mockS.showVids[0]).toBeFalsy();
		expect(mockS.showVids[1]).toBeFalsy();
	})

	it("Function Play Video", function () {
		mockS.playVid1();
		expect(mockS.showVids[0]).toBeTruthy();

		mockS.playVid2();
		expect(mockS.showVids[1]).toBeTruthy();
	})

})