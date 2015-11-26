class Recipe < ActiveRecord::Base
  validates :name, presence: true
  validates :image, presence: true
  validates :time, numericality: {only_integer: true}, presence: true
  validates :quantity, numericality: {only_integer: true}, presence: true
  validates :ingredients, presence: true
  validates :instructions, presence: true


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
