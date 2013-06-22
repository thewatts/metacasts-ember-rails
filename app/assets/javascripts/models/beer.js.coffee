App.Beer = DS.Model.extend
  title:      DS.attr('string')
  abv:        DS.attr('number')
  country_id: DS.attr('number')
  brewery_id: DS.attr('number')
  brewery:    DS.belongsTo('App.Brewery')
  country:    DS.belongsTo('App.Country')
