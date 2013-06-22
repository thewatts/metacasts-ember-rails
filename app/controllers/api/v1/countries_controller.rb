class Api::V1::CountriesController < Api::V1::ApiController
  inherit_resources

  def show
    @country = Country.find(params[:id])
    render json: @country
  end

  def index
    @countries = Country.joins(:breweries).order("title asc")
    [:region_id].each do |p|
      if params[p].present?
        @countries = @countries.where(p => params[p])
      end
    end
    if params[:query].present?
      @countries = @countries.where("title like ?", "%#{params[:query]}%")
    end
    render json: @countries
  end

end
