class EducationsController < ApplicationController

    def new
    @education = Education.new 
    end


  def create
   
@education = Education.create(university_name: params[:education][:university_name], stream: params[:education][:stream], end_date: params[:education][:end_date], percentage: params[:education][:percentage], user_id: params[:education][:user_id], start_date: params[:education][:start_date], description: params[:education][:description]
)
    redirect_to education_path(id: @education.id)
  end


  def show
  @education = Education.find(params[:id])
  end

end
