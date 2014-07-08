require 'rails_helper'

RSpec.describe Profile, :type => :model do
  it "checking email address" do
    profile = Profile.new
    profile.email = "username@gmail.com"
    profile.save

    expect(profile).to be_valid
  end

  it "check for valid email format" do
    profile = Profile.new
    profile.email = "usernamegmail.com"
    profile.save

    expect(profile).to be_invalid
  end

  it "should contain characters only" do
    profile = Profile.new
    profile.first_name = "morne"
    profile.save

    expect(profile).to be_valid
  end


end





