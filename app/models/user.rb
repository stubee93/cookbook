class User < ActiveRecord::Base
  validates :username, presence: true
  validates :name, presence: true
  has_many :recipes
  has_many :comments
  has_many :favorite_recipes
  has_many :favorites, through: :favorite_recipes, source: :recipe
  ratyrate_rater

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  Roles = [ :admin , :default ]

  def is?( requested_role )
    self.role == requested_role.to_s
  end
end
