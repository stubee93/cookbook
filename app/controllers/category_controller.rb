class CategoryController < ApplicationController
  def index
    @categories = Category.all
  end

  def subcategories
    @categories = Category.find(params[:id]).subcategories
  end

  def list
    @recipes = Subcategory.find(params[:id]).recipes
  end
end
