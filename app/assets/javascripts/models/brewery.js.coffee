App.Brewery = DS.Model.extend
  title:      DS.attr('string')
  address:    DS.attr('string')
  synonyms:   DS.attr('string')
  beer_ids:   DS.attr('string')
  country_id: DS.attr('number')
  country:    DS.belongsTo('App.Country')
  beers:      DS.hasMany("App.Beer")

  cityState: (->
    if @get("address")?
      r = new RegExp(/^(.+)\s+\|\s+(\D+)\s+/)
      return r.exec(@get("address"))[1..2].join(", ")
    return null
  ).property('address')

  displayName: (->
    name = @get("title")
    if @get("synonyms")?
      name += " aka #{@get("synonyms")}"
      return name
  ).property("title", "synonyms")

  beerCount: (->
    beers = @get("beers")
    beers.toArray().length
  ).property("beers.@each.id")
