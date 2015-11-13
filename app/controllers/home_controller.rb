class HomeController < ApplicationController
  def home
    @last_recipes = Recipe.last(3)
  end



end
