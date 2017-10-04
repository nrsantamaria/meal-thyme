class MealsController < ApplicationController

  def index
    @user = current_user
    @meals = @user.meals
  end

  def create
    @user = current_user
    @meal = @user.meals.create!(meal_params)
    redirect_to user_path(@user)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to user_path(@meal.user)
  end

  def day_calendar
    @user = current_user
    @meals = @user.meals
  end
  def week_calendar
    @user = current_user
    @meals = @user.meals
  end
  def month_calendar
    @user = current_user
    @meals = @user.meals
  end

  private
  def meal_params
    params.require(:meal).permit(:category, :start_time, :recipe_id)
  end
end
