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

  def day_cal
    @user = current_user
    @meals = @user.meals
    respond_to do |format|
      format.html {render partial:"day_cal", locals: {events: @events} }
      format.js
    end
  end
  def week_cal
    @user = current_user
    @meals = @user.meals
    respond_to do |format|
      format.html {render partial: "week_cal"}
      format.js
    end
  end
  def month_cal
    @user = current_user
    @meals = @user.meals
    respond_to do |format|
      format.html {render partial: "month_cal"}
      format.js
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:category, :start_time, :recipe_id)
  end
end
