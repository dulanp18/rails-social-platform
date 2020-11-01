class PostsController < ApplicationController
  skip_before_action :authenticate_user!
  belongs_to :users

  def index
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end


end
