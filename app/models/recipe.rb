class Recipe < ActiveRecord::Base
  belongs_to :user
  belongs_to :level
  has_many :comments
  has_many :favorite_recipes
  has_many :favorited_by, through: :favorite_recipes, source: :user
  ratyrate_rateable "instructions"

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
