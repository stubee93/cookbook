class Subcategory < ActiveRecord::Base
  has_many :recipes
  belongs_to :category
end
