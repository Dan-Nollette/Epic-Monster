class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
    @skills = @profile.skills
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def create
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
