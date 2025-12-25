class Admins::DashboardController < ApplicationController
  before_action :authenticate_admin!

  def index
    @posts = Post.all.order("created_at DESC")
    @post_count = Post.count
    @latest_post = Post.last
  end
end
