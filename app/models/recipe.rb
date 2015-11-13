class Recipe < ActiveRecord::Base
  #attr_accessible :image
  belongs_to :user
  belongs_to :level
  belongs_to :subcategory
  has_many :comments
  has_many :favorite_recipes
  has_many :favorited_by, through: :favorite_recipes, source: :user
  ratyrate_rateable "instructions"
  mount_uploader :image, ImageUploader
end
