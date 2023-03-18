class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable

  has_many :posts
  has_many :comments
  has_many :friends
  has_many :likes

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :date_of_birth, presence: true
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
