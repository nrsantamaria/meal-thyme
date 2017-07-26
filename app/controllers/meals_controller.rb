class MealsController < ApplicationController
  
  def create
    @user = current_user
    @meal = @user.meals.new(meal_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:category, :start_time, :recipe_id)
  end
end
