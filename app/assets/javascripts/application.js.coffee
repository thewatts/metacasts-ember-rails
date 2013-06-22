#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require beerdb
@App = Ember.Application.create(
  Ember.LOG_BINDINGS = true
)

#= require_tree .
