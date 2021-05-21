class RecipesController < ApplicationController
  before_action :authenticate_user!,only: [:show]
  
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @review = Review.new
  end
end
