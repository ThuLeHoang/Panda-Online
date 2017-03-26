var myapp = angular.module('myapp', []);

myapp.controller('myController_1', ['$scope', function ($scope) {
	
}])

myapp.controller('myController_2', ['$scope', function ($scope) {
	$scope.showVid = false;
	$scope.playVid = function() {
		$scope.showVid = ! $scope.showVid
	}
}])

myapp.controller('myController_3', ['$scope', function ($scope) {
	
}])

myapp.controller('myController_4', ['$scope', function ($scope) {
	
}])