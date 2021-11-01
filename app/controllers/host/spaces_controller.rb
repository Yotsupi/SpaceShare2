class Host::SpacesController < ApplicationController
  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.host_id = current_host.id
    @space.save
    redirect_to root_path
  end
  
  def show
    @space = Space.find(params[:id])
  end


  private
  def space_params
    params.require(:space).permit(:name, :address, :detail, :capacity, :open_time, :close_time, :hourly_rate, :image)
  end

end
