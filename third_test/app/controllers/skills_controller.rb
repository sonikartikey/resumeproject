class SkillsController < ApplicationController

    def new
    @skill = Skill.new 
    end


  def create
@skill = Skill.create(user_id: params[:skill][:user_id], workflow: params[:skill][:workflow])
    redirect_to skill_path(id: @skill.id)
  end


  def show
  @skill = Skill.find(params[:id])
end

end