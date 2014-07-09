class SelectorController < ApplicationController

  def create
    selector = Url.new
    url.original = params[:url]

  end

  def index
  end


end


