angular.module('huBEERt.places')

.controller "PlacesSearchCtrl", ($scope, $state, PlacesServ) ->

  $scope.form = {}

  $scope.search = ->
    $scope.form.gps = false
    PlacesServ.search($scope.form).then ->
      $state.go('placesSearchResults')

  $scope.searchGps = ->
    $scope.form.gps = true
    PlacesServ.search($scope.form).then ->
      $state.go('placesSearchResults')


