angular.module("ionicstarter")

.config ($stateProvider, $urlRouterProvider) ->
  
  # Ionic uses AngularUI Router which uses the concept of states
  # Learn more here: https://github.com/angular-ui/ui-router
  # Set up the various states which the app can be in.
  
  # the pet tab has its own child nav-view and history
  $stateProvider

  .state "tab",
    url: "/tab"
    abstract: true
    templateUrl: "templates/tabs.html"

  .state "tab.pet-index",
    url: "/pets"
    views:
      "pets-tab":
        templateUrl: "templates/pet-index.html"
        controller: "PetIndexCtrl"

  .state "tab.pet-detail",
    url: "/pet/:petId"
    views:
      "pets-tab":
        templateUrl: "templates/pet-detail.html"
        controller: "PetDetailCtrl"

  .state "tab.adopt",
    url: "/adopt"
    views:
      "adopt-tab":
        templateUrl: "templates/adopt.html"
        
  .state "tab.about",
    url: "/about"
    views:
      "about-tab":
        templateUrl: "templates/about.html"

  
  # if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise "/tab/pets"
