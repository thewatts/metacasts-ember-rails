Brewery = BeerDb::Models::Brewery

class Brewery
  attr_accessible :title, :address, :synonyms, :beer_ids, :country_id

  def active_model_serializer
    BrewerySerializer
  end

end
