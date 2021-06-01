class RecipesController < ApplicationController
  before_action :authenticate_user!,only: [:show]
  
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create!(recipe_params)
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find(params[:id])
    @review = Review.new
  end

  def recipe_params
    params.require(:recipe).permit(:name,:maker,:recipe_img)
  end
end
