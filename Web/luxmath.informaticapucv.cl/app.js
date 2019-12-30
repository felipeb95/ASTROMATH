var fetch = angular.module('myapp', []);

fetch.controller('puntuaciones', ['$scope', '$http', function ($scope, $http) {
 $http({
  method: 'get',
  url: 'selHigh.php'
 }).then(function successCallback(response) {
  // Store response data
  $scope.highscores = response.data;
 });
}]);

fetch.controller('logros', ['$scope', '$http', function ($scope, $http) {
 $http({
  method: 'get',
  url: 'selLogros.php'
 }).then(function successCallback(response) {
  // Store response data
  $scope.logros = response.data;
  console.log(logros);
 });
}]);
