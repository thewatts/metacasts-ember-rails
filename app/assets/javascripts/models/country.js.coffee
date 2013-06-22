App.Country = DS.Model.extend
  title: DS.attr('string')
  breweries: DS.hasMany("App.Brewery")
