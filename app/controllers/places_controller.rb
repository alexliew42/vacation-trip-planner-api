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
    @place.save
    render json: {message: "Place successfully created"}
  end
end
