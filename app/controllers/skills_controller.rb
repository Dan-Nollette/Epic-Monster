class SkillsController < ApplicationController
  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if (@skill.save)
      flash[:notice] = "Skill successfully added!"
      redirect_to skills_path
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if (@skill.update(skill_params))
      flash[:notice] = "Skill successfully updated!"
      redirect_to skill_path(@skill)
    else
      render :edit
    end
  end

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
  end

private
  def skill_params
    params.require(:skill).permit(:name)
  end
end
