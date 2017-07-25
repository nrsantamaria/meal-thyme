class UsersController < ApplicationController
  before_action :only => [:show] do
    flash.alert = "You must be logged in to access that page."
    redirect_to '/' unless current_user
  end

  def index
    render 'home#index'
  end

  def show
    @user = User.find(params[:id])
  end
end
