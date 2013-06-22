class Api::V1::BreweriesController < Api::V1::ApiController
  inherit_resources

  def index
    @breweries = Brewery.scoped
    if params[:ids]
      @breweries = @breweries.where("id in (?)", params[:ids])
    end
    [:region_id, :country_id, :city_id].each do |p|
      if params[p].present?
        @breweries = @breweries.where(p => params[p])
      end
    end
    render json: @breweries
  end

end
