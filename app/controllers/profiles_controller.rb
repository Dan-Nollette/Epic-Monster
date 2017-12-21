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
      params[:skill].each do |key, value|
        if value
          @profile.skills.create(key)
        end
      end
      flash[:notice] = "Profile successfully updated!"
      redirect_to profile_path(@profile)
    else
      render :edit
    end
  end

  def create
    @skills = Skill.all
    @profile = Profile.new(profile_params.merge( :user_id => current_user.id))
    if (@profile.save)
      params[:skill].each do |skill|
        puts (skill.key) + "   " + skill.value
      end
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
