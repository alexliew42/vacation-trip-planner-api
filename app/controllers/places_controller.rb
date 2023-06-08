class PlacesController < ApplicationController
  # before_action :authenticate_user

  def index
    @places = Place.where(trip_id: params[:trip_id])
    render :index
  end

  def create
    @place = Place.new(
      trip_id: params[:trip_id],
      address: params[:address], 
      name: params[:name],
      description: params[:description], 
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time]
    )
    results = Geocoder.search(@place.address)
    @place = Place.new(
      trip_id: @place.trip_id,
      address: @place.address, 
      name: @place.name,
      description: @place.description, 
      image_url: @place.image_url,
      start_time: @place.start_time,
      end_time: @place.end_time,
      lat: results.first.coordinates[0],
      long: results.first.coordinates[1]
    )
    @place.save
    render :show
  end
end
