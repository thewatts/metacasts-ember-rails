Beer = BeerDb::Models::Beer

class Beer

  attr_accessible :title, :abv, :country_id, :brewery_id

  validates :title, presence: true

  before_create do
    if self.key.blank?
      self.key = self.title.parameterize
    end
  end

  def active_model_serializer
    BeerSerializer
  end

end