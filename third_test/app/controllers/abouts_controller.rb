class AboutsController < ApplicationController

  def new
  @about = About.new 
  end


  def create
@about = About.create(name: params[:about][:name], email: params[:about][:email], description: params[:about][:description], user_id: params[:about][:user_id],address: params[:about][:address]
)
    redirect_to about_path(id: @about.id)
  end


  def show
  @about = About.find(params[:id])
  end
end
