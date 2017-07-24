class UsersController < ApplicationController
  def index
    render 'home#index'
  end
  def show
    @user = User.find(params[:id])
  end
end
