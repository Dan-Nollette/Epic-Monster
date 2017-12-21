class JobListingsController < ApplicationController
  def index
    @listings = JobListing.all
    @profile;
    if current_user
      @profile = current_user.profile
    end
  end

  def new
    @profile = Profile.find(params[:profile_id])
    @job_listing = JobListing.new
    @method = :post
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @job_listing = JobListing.new(job_listing_params.merge(profile_id: params[:profile_id]))
    if (@job_listing.save)
      flash[:notice] = "Job Listing successfully added!"
      redirect_to profile_job_listing_path(profile_id: params[:profile_id], id: @job_listing.id)
    else
      render :new
    end
  end

  def show
    @job_listing = JobListing.find(params[:id])
  end

  def update
    @method = :put
  end

  def destroy
    @job_listing = JobListing.find(params[:id])
    @job_listing.destroy
    redirect_to profile_job_listings_path
  end

private
  def job_listing_params
    params.require(:job_listing).permit(:title, :description, :keywords)
  end
end
