class ItineraryController < ApplicationController

  def index
  end

  def create
    itinerary = Itinerary.new
    itinerary.destination = params[:destination]
    itinerary.starting = params[:starting]
    itinerary.rating = params[:rating]
    itinerary.date = params[:date]
    itinerary.hotel = params[:hotel]
    itinerary.tfo = params[:tfo]
    itinerary.hotelurl = params [:hotelurl]
    itinerary.cityurl = params [:cityurl]
    itinerary.save

    @itinerary = itinerary
  end

end

