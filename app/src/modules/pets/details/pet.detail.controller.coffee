angular.module('huBEERt.pets')

# A simple controller that shows a tapped item's data
.controller "PetDetailCtrl", ($scope, $stateParams, PetService, Restangular) ->
  Restangular.all('users').getList().then (result) ->
    users = result
    console.log result
  , (err) ->
    console.log err
  $scope.pet = PetService.get($stateParams.petId)

