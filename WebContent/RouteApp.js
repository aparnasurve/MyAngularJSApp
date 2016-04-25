
var sampleApp = angular.module('sampleApp', []);
 

sampleApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/AddNewOrder', {
        templateUrl: 'http://localhost:8080/MyAngularJSApp/add_order.html',
        controller: 'AddOrderController'
    }).
      when('/ShowOrders', {
        templateUrl: 'http://localhost:8080/MyAngularJSApp/show_orders.html',
        controller: 'ShowOrdersController'
      }).
      otherwise({
        redirectTo: '/AddNewOrder'
      });
}]);
 
 
sampleApp.controller('AddOrderController', function($scope) {
     
    $scope.message = 'This is Add new order screen';
     
});
 
 
sampleApp.controller('ShowOrdersController', function($scope) {
 
    $scope.message = 'This is Show orders screen';
 
});