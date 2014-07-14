class ItineraryController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  end

  def create
    itinerary = Itinerary.new
    itinerary.destination = params[:destination]
    itinerary.starting = params[:starting]
    itinerary.rating = params[:rating]
    itinerary.date = params[:date]
    itinerary.hotel = params[:hotel]
    itinerary.tfd = params[:tfd]
    itinerary.save

    @itinerary = itinerary
  end

end

