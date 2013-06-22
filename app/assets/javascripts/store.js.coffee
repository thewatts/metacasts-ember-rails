DS.RESTAdapter.configure "plurals",
  country: "countries"
  brewery: "breweries"

DS.RESTAdapter.reopen
  namespace: "api/v1"
  # url: if it's on a remote server

App.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create()

