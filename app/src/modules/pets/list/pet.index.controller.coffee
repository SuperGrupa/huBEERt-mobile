angular.module('huBEERt.pets')

# A simple controller that fetches a list of data from a service
.controller "PetIndexCtrl", ($scope, PetService) ->
  $scope.pets = PetService.all()

