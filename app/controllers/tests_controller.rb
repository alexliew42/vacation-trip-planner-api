class TestsController < ApplicationController
  def index
    results = Geocoder.search("France")
    render json: {message: results.first.coordinates}
  end
end
