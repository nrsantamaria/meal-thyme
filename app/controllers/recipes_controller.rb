class RecipesController < ApplicationController
  before_action :only => [:new, :edit, :destroy] do
    (flash.alert = "You are not authorized to access that page.";
    redirect_to '/') unless admin?
  end

  def index
    @recipes = Recipe.all
    @user = current_user
    @meal = @user.meals.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :imageUrl, :calories, :protein, :fat, :carbohydrates, :instructions, :diets, :ingredients)
  end
end
