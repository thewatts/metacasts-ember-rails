class Api::V1::RegionsController < Api::V1::ApiController
  inherit_resources

  def index
    @regions = Region.order("title asc")
    if params[:query].present?
      @regions = @regions.where("title like ?", "%#{params[:query]}%")
    end
    render json: @regions
  end


end
