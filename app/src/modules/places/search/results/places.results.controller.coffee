angular.module('huBEERt.places')

.controller "PlacesResultsCtrl", ($scope, $state, PlacesServ) ->

  $scope.searching = PlacesServ.getSearchingAttr()

  PlacesServ.getAll().then (result) ->
    $scope.places = result


