angular.module('huBEERt.about')

# A simple controller that shows a tapped item's data
.controller "AboutCtrl", ($scope, Restangular) ->
  console.log 'asd'
  Restangular.all('users').getList().then (result) ->
    users = result
    console.log result
  , (err) ->
    console.log err
