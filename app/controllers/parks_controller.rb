class ParksController < ApplicationController
  def index
    @parks = ParkFacade.park_by_state(params[:state])
  end
end