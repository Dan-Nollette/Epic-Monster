class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
    @skills = @profile.skills
  end

  def new
    @skills = Skill.all
    @profile = Profile.new
  end

  def edit
    @skills = Skill.all
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if (@profile.update(profile_params))
      flash[:notice] = "Profile successfully updated!"
      skills =[]
      params[:skill].each do |key, value|
        if (value == '1')
          skills << Skill.find_by(name: key)
        end
      end
      @profile.skills = skills
      redirect_to profile_path(@profile)
    else
      render :edit
    end
  end

  def create
    @skills = Skill.all
    @profile = Profile.new(profile_params.merge( :user_id => current_user.id))
    if (@profile.save)
      flash[:notice] = "Profile successfully added!"
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end


private
  def profile_params
    params.require(:profile).permit(:name, :description, :kind)
  end
end
