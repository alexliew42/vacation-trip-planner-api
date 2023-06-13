class TripsController < ApplicationController
  before_action :authenticate_user

  def index
    @trips = Trip.where(user_id: current_user.id)
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
