class SelectorController < ApplicationController
  protect_from_forgery with: :null_session

  def index
  #   @selector = Selector.new
  #   @selector.original = params[:selector]

  #   if @selector.save
  #     render :itinerary
  #   else
  #     render :text, "Error"
  #   end
  # end

  end

  def search
    # @itineraries = Itinerary.all.order(created_at: :desc)
    # binding.pry
    rating = params[:rating]
    @itineraries = Itinerary.where('rating >= ' + rating).order(created_at: :desc)
  end
end