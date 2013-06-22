App.CountriesRoute = Ember.Route.extend
  model: ->
    App.Country.find()