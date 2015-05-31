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
        this.updateAll().then ->
            deferred.resolve(places)
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
