/**
 * 
 */
var app = angular.module("myApp", [])
app.controller('myCtrl', ['$scope', function($scope)
         {
			$scope.display='Hello AngularJS';
			
			$scope.display1=function()
			{
				$scope.first='Aparna';
			};
			$scope.display2=function()
			{
				$scope.last='Surve';
			};
         }]);
                          