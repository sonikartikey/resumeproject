class AwardsController < ApplicationController

def new
    @award = Award.new 
    end


  def create
   
@award = Award.create(user_id: params[:award][:user_id],description: params[:award][:description]
)
    redirect_to award_path(id: @award.id)
  end


  def show
  @award = Award.find(params[:id])
  end

end
