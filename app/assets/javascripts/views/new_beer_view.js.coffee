App.NewBeerView = Ember.View.extend
  templateName: "beer/form"
  abv: "1.0"

  submit: ->
    @get("controller").send("addBeer", {
      title: @get("title")
      abv:   @get("abv")
    })
    @set("abv", "1.0")
    @set("title", "")
    false
