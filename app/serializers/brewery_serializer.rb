class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :title, :address, :country_id, :synonyms, :beer_count
  embed :ids

  def beer_count
    self.object.beers.count
  end

  has_many :beers

end
