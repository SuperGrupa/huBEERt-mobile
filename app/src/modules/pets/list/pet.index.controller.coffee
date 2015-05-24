angular.module('huBEERt.pets')

# A simple controller that fetches a list of data from a service
.controller "PetIndexCtrl", ($scope, PetService) ->
  console.log  GLOBALS.API_URL
  $scope.pets = PetService.all()

