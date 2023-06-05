class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render :index
  end

  def create
    @trip = Trip.new(
      user_id: params[:user_id],
      title: params[:title],
      image_url: params[:image_url],
      start_time: params[:start_time],
      end_time: params[:end_time]
    )
    @trip.save
    render :show
  end
end
