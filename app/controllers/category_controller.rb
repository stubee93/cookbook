class CategoryController < ApplicationController
  def index
    @categories = Category.all
  end

  def subcategories

  end
end
