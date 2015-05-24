'use strict'

angular.module 'huBEERt.pets', ['ui.router']
.config ($stateProvider, $urlRouterProvider) ->

  $stateProvider
    .state "tab.pet-index",
      url: "/pets"
      views:
        "pets-tab":
          templateUrl: "src/modules/pets/list/pet.index.template.html"
          controller: "PetIndexCtrl"

    .state "tab.pet-detail",
      url: "/pet/:petId"
      views:
        "pets-tab":
          templateUrl: "src/modules/pets/details/pet.detail.template.html"
          controller: "PetDetailCtrl"

    .state "tab.adopt",
      url: "/adopt"
      views:
        "adopt-tab":
          templateUrl: "src/modules/pets/adopt/adopt.template.html"
