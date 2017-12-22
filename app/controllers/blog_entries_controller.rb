class BlogEntriesController < ApplicationController
  def create
    @profile = Profile.find(params[:profile_id])
    @blog_entry = BlogEntry.new(blog_entry_params.merge(profile_id: params[:profile_id]))
    if (@blog_entry.save)
      flash[:notice] = "Blog Entry successfully added!"
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end
private
  def blog_entry_params
    params.require(:blog_entry).permit(:title, :body)
  end
end
