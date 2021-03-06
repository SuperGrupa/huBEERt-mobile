angular.module("huBEERt.places")

.service 'PlacesServ', ($q, Restangular) ->
    places = []
    searchForm = {}

    getSearchingAttr: ->
      if searchForm.gps
        searchForm.title = 'GPS'
      else
        searchForm.title = searchForm.string
      searchForm

    getAll: ->
      deferred = $q.defer()
      deferred.resolve(places)
      deferred.promise

    updateAll: ->
        Restangular.all('places').getList().then (result) ->
            places = result
        , (err) ->
            console.log err

    search: (form) ->
        deferred = $q.defer()
        searchForm = form
        Restangular.all("").customGET("", {q: form.string, city: form.city}).then (result) ->
            places = result
            deferred.resolve(result)
        , (err) ->
            console.log err
            deferred.reject(err)
        deferred.promise

    getOne: (id) ->
        deferred = $q.defer()
        if _.isUndefined(id) || _.isNaN(id)
            deferred.resolve({})
        else
            Restangular.one('places', id).get().then (result) ->
                deferred.resolve(result)
            , (err) ->
                console.log err
                deferred.reject(err)
        deferred.promise

    getOpeningHours: (id) ->
        deferred = $q.defer()
        if _.isNaN(id) || _.isUndefined(id)
            deferred.resolve({})
        else
            Restangular.one('places', id).getList('opening_hours').then (result) ->
                deferred.resolve(result)
            , (error) ->
                AlertsServ.logError(error)
                deferred.reject(error)
        deferred.promise

    getAddress: (id) ->
        deferred = $q.defer()
        if _.isNaN(id) || _.isUndefined(id)
            deferred.resolve({})
        else
            Restangular.one('places', id).customGET('address').then (result) ->
                deferred.resolve(result)
            , (error) ->
                AlertsServ.logError(error)
                deferred.reject(error)
        deferred.promise
