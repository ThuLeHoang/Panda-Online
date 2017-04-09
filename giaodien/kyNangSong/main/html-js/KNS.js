var myapp = angular.module('myapp', []);

myapp.controller('myController', ['$scope', function ($scope) {
	//$scope.showVid1 = false;
	//$scope.showVid2 = false;

	$scope.showVids = [false, false];

	$scope.playVid1 = function() {
		$scope.showVids[0] = ! $scope.showVids[0]
	}
	
	$scope.playVid2 = function() {
		$scope.showVids[1] = ! $scope.showVids[1]
	}
	
}])

