class UserController < ApplicationController

  def profil
    @user = User.find(params[:id])
    @favorites = @user.favorites
  end

  def recipes
    @recipes = User.find(params[:id]).recipes
  end


end
