class SelectorController < ApplicationController

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
    rating = params[:rating]
    duration = params[:tfo]
    # binding.pry
    @itineraries = Itinerary.where("rating = #{rating} and tfd <= #{duration}").order(created_at: :desc)

  end
end