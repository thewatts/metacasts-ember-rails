class Api::V1::CitiesController < Api::V1::ApiController
  inherit_resources

  def index
    @cities = City.where({})
    [:region_id, :country_id].each do |p|
      if params[p].present?
        @cities = @cities.where(p => params[p])
      end
    end
    render json: @cities
  end

end
