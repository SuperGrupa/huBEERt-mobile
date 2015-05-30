angular.module 'huBEERt', ['ui.router', 'huBEERt.tabs', 'huBEERt.places', 'huBEERt.user']

.config ($stateProvider, $urlRouterProvider) ->
  # Ionic uses AngularUI Router which uses the concept of states
  # Learn more here: https://github.com/angular-ui/ui-router
  # Set up the various states which the app can be in.
  # the pet tab has its own child nav-view and history
  $stateProvider


  $urlRouterProvider.otherwise "/tab/search"
