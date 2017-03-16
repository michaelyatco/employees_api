/* global angular */

(function() {
  "use strict";

  angular.module("app").controller("employeesCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/api/v2/employees.json").then(function(response) {
        $scope.employees = response.data;
      });

      $scope.addEmployee = function(newFirstName, newLastName) {
        var employeeParams = {first_name: newFirstName, last_name: newLastName};
        $http.post("/api/v2/employees.json", employeeParams).then(function(response) {
          $scope.employees.push(response.data);
          $scope.inputFirstName = null;
          $scope.inputLastName = null;
        }, function(error) {
          console.log(error);
          $scope.errors = error.data.errors;
        });
      };

      $scope.toggleOrder = function(attribute) {
        if (attribute !== $scope.orderAttribute) {
          $scope.isDescending = false;
        } else {
          $scope.isDescending = !$scope.isDescending;
        }
        $scope.orderAttribute = attribute;
      };

      $scope.sortArrow = function(attribute) {
        if (attribute === $scope.orderAttribute) {
          return $scope.isDescending ? 'v' : '^';
        } else {
          return '';
        }
      };
    };
  });
})();