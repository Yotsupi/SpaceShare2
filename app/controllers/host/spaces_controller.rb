class Host::SpacesController < ApplicationController
  def new
    @space = Space.new
  end
  
  private
  def space_params
    
  end
  
end
