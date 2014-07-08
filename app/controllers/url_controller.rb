class UrlController < ApplicationController
  protect_from_forgery with :null_session

  def create
    url = Url.new
    url.original = params[:url]

    if url.save
      render :create
    else
      render :text, "error"
  end

end