angular.module('huBEERt.places')

.controller "PlacesShowCtrl", ($scope, PlacesServ, $stateParams) ->

  PlacesServ.getOne($stateParams.id).then (result) ->
    $scope.place = result


