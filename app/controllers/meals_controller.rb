class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def create
    @user = current_user
    @meal = @user.meals.create!(meal_params)
    redirect_to user_path(@user)
  end

  private
  def meal_params
    params.require(:meal).permit(:category, :start_time, :recipe_id)
  end
end
