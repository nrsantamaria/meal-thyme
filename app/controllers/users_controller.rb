class UsersController < ApplicationController
  before_action :only => [:show] do
    (flash.alert = "You must be logged in to access that page.";
    redirect_to '/') unless current_user
  end

  def index
    redirect_to '/'
  end

  def show
    @user = current_user
  end

  def details
    @user = current_user
  end
end
