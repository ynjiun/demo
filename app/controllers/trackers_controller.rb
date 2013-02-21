class TrackersController < ApplicationController

  http_basic_authenticate_with :name => "ypw", :password => "secret", :only => :destroy

  def create
    @post = Post.find(params[:post_id])
    @tracker = @post.trackers.create(params[:tracker])
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @tracker = @post.trackers.find(params[:id])
    @tracker.destroy
    redirect_to post_path(@post)
  end
end
