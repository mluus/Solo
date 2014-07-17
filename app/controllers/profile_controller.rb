class ProfileController < ApplicationController

  before_action :authenticate_user!, :except => [:create]

  def show

    @profile = current_user.profile

    if @profile
      # if it does
      render :profile
    else
      # if it doesn't
      render :new
    end
  end


  def user_data
  end

  def create

    profile = Profile.new
    profile.first_name = params[:first_name]
    profile.last_name = params[:last_name]
    profile.email = params[:email]
    profile.house_number = params[:house_number]
    profile.street_name = params[:street_name]
    profile.city = params[:city]
    profile.beach_holiday = params[:beach_holiday]
    profile.sport_holiday = params[:sport_holiday]
    profile.family_holiday = params[:family_holiday]
    profile.culture_holiday = params[:culture_holiday]
    profile.romantic_holiday = params[:romantic_holiday]
    profile.city_holiday = params[:city_holiday]
    profile.save

    # current_user.profile = profile
    user = User.find(params[:user_id])
    user.profile = profile
    @profile = profile

    # binding.pry
    render :profile
  end


end


