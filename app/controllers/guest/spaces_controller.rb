class Guest::SpacesController < ApplicationController
  def index
    @spaces = Space.where(is_active: true)
  end

  def show
  end
end
