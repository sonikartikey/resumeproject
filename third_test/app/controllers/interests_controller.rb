class InterestsController < ApplicationController

    def new
    @interest = Interest.new 
    end


  def create
@interest = Interest.create(user_id: params[:interest][:user_id],description: params[:interest][:description])
    redirect_to interest_path(id: @interest.id)
  end


  def show
  @interest = Interest.find(params[:id])
  end

end
