class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  respond_to :html


  def index
    @recipes = User.find(current_user.id).recipes
    respond_with(@recipes)
  end

  def show
    respond_with(@recipe)
  end

  def new
    if user_signed_in?
      @recipe = Recipe.new
      respond_with(@recipe)
    else
      redirect_to "/"
    end

  end

  def edit
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    respond_with(@recipe)
  end

  def update
    @recipe.update(recipe_params)
    respond_with(@recipe)
  end

  def destroy
    @recipe.destroy
    respond_with(@recipe)
  end

  # Add and remove favorite recipes
  # for current_user
  def favorite
    type = params[:type]
    @recipe = Recipe.find(params[:id])
    if type == "favorite"
      #current_user.favorites << @recipe
      current_user.favorites << @recipe
      redirect_to :back, notice: 'Sikeresen kedvencnek jelölted: ' + @recipe.name

    elsif type == "unfavorite"
      current_user.favorites.delete(@recipe)
      redirect_to :back, notice: 'Sikeresen törölted a kedvencek közül: '+@recipe.name

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :time, :difficulty, :ingredients, :instructions, :image).merge(user_id: current_user.id)
    end
end
