/*global angular*/
angular.module("filterNames", []).filter("nameFilter", [function() {
  return function(array) {
    if (array) {
      var longnames = [];
      for (var i = 0; i < array.length; i++) {
        if (array[i].lastName.length > 8) {
          longnames.push(array[i]);
        }
      }
      return longnames;
    }
  };
}]);