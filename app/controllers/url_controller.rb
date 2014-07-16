class UrlController < ApplicationController

  before_action :authenticate_user!, :except => [:create]

  def index
  end

  def create
    @url = Url.new
    @url.original = params[:url]

    if @url.save
      render :create
    else
      render :text, "error"
    end
  end

end