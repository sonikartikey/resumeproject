class WelcomeController < ApplicationController
  def index
    @user = User.first
    @about = @user.about
    # @address = About.last.address
    # @email = About.last.email
    # @description = About.last.description
    @experience =@user.experience
    @education =@user.education
  end
end
