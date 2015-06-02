'use strict'

angular.module 'huBEERt.user', ['ui.router']
.config ($stateProvider, $urlRouterProvider) ->

  $stateProvider
    .state "userProfile",
      url: "/profile"
      views:
        "user-profile":
          templateUrl: "src/modules/user/profile/user.profile.template.html"
          controller: 'UserProfileCtrl'
      parent: 'tab'
