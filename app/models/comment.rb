class Comment < ActiveRecord::Base
  validates :user_id, presence: true
  validates :recipe_id, presence: true
  validates :content, presence: true
  belongs_to :user
  belongs_to :recipe
end
