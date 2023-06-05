class PlacesController < ApplicationController
  def index
    @places = Place.where(trip_id: params[:trip_id])
    render :index
  end
end
