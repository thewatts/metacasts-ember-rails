App.BreweryController = Ember.ObjectController.extend

  isEditing: false

  edit: ->
    @set("isEditing", true)

  save: ->
    # window.store = @store
    # console.log @store
    @store.commit()
    @set("isEditing", false)

  addBeer: (attrs) ->
    attrs = $.extend(attrs, {
      brewery_id: @content.get("id")
      country_id: @content.get("country_id")
    })
    if !attrs.title? or attrs.title.trim() is ""
      alert "Please give your beer a name!"
    else
      beer = App.Beer.createRecord(attrs)
      @content.get("beers").pushObject(beer)
      @get("store").commit()

