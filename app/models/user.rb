class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :validatable

  has_many :guitars
  has_many :rentals, dependent: :destroy
  has_one_attached :avatar

  validates :description, presence: true
  validates :username, presence: true, uniqueness: true
end
