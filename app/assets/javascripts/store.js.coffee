DS.RESTAdapter.configure "plurals",
  country: "countries"
  brewery: "breweries"

DS.RESTAdapter.reopen
  namespace: "api/v1"

App.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()

