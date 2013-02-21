class HomeController < ApplicationController
  def index
  	@feed=FeedEntry.all(:limit => 100, :order => "published_at desc")
  end
end
