class JobListingsController < ApplicationController
  def index
    @listings = JobListing.all
  end
end
