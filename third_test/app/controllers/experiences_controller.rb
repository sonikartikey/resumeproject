class ExperiencesController < ApplicationController

    def new
  @experience = Experience.new 
  end


  def create
@experience = Experience.create(company_name: params[:experience][:company_name], designation: params[:experience][:designation], end_date: params[:experience][:end_date], description: params[:experience][:description], user_id: params[:experience][:user_id], start_date: params[:experience][:start_date]
)
    redirect_to experience_path(id: @experience.id)
  end


  def show
  @experience = Experience.find(params[:id])
  end

end
