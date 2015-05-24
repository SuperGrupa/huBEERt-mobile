app = angular.module(GLOBALS.ANGULAR_APP_NAME)


app.config ($httpProvider, RestangularProvider) ->
  RestangularProvider.setBaseUrl('http://localhost:3000/api/v1/')
  RestangularProvider.setRequestSuffix('')
  RestangularProvider.setDefaultHeaders({'Content-Type': 'application/json'})

  # Combine multiple $http requests into one $applyAsync (boosts performance)
  $httpProvider.useApplyAsync(true)

  # Add support for PATCH requests
  $httpProvider.defaults.headers.patch ||= {}
  $httpProvider.defaults.headers.patch['Content-Type'] = 'application/json'

  # Send API version code in header (might be useful in future)
  $httpProvider.defaults.headers.common["X-Api-Version"] = "1.0"

  $httpProvider.interceptors.push ($injector, $q, $log, $location) ->
    responseError: (response) ->
      $log.debug "httperror: ", response.status unless GLOBALS.ENV == "test"

      # Sign out current user if we receive a 401 status.
      if response.status == 401
        $injector.invoke (Auth) ->
          Auth.setAuthToken(null, null)
          $location.path("/")

      $q.reject(response)
