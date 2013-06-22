class Api::V1::BeersController < Api::V1::ApiController
  inherit_resources

  def index
    @beers = Beer.where({})
    [:brewery_id, :region_id, :country_id, :city_id].each do |p|
      if params[p].present?
        @beers = @beers.where(p => params[p])
      end
    end
    if params[:query].present?
      @beers = @beers.where("title like ?", "%#{params[:query]}%")
    end
    render json: @beers
  end

end
