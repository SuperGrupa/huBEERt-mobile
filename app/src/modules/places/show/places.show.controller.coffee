angular.module('huBEERt.places')

.controller "PlacesShowCtrl", ($scope, PlacesServ, $stateParams, $ionicScrollDelegate) ->

  PlacesServ.getOne($stateParams.id).then (result) ->
    $scope.place = result
  PlacesServ.getAddress($stateParams.id).then (result) ->
    $scope.address = result
  PlacesServ.getOpeningHours($stateParams.id).then (result) ->
    $scope.opening_hours = result

  $scope.scrollToTabs = ->
    $ionicScrollDelegate.scrollBottom()


