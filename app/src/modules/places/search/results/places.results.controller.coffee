angular.module('huBEERt.places')

.controller "PlacesResultsCtrl", ($scope, $state, PlacesServ) ->

  $scope.searching = PlacesServ.getSearchingAttr()

  PlacesServ.getAll().then (result) ->
    if !!result
      PlacesServ.search().then (result) ->
        $scope.places = result
    else
      $scope.places = result


