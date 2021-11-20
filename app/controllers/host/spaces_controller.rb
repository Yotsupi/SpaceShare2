class Host::SpacesController < ApplicationController
  before_action :authenticate_host!
  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.host_id = current_host.id
    if @space.save
      redirect_to host_space_path(@space.id)
    else
      render :new
    end
  end

  def index
    @spaces = Space.all.where(host_id: current_host.id)
  end

  def show
    @space = Space.find(params[:id])
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    redirect_to host_space_path(@space.id)
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :detail, :capacity, :open_time, :close_time, :hourly_rate, :image,
                                  :is_active)
  end
end
