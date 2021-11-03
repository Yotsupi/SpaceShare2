class Guest::SpacesController < ApplicationController
  def index
    @spaces = Space.where(is_active: true)
  end

  def show
    @space = Space.find(params[:id])
  end

  private
  def space_params
    params.require(:space).permit(:id)
  end


end
