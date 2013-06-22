class BeerSerializer < ActiveModel::Serializer
  attributes :id, :title, :abv, :brewery_id, :country_id
end
