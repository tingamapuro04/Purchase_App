class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :purchases, foreign_key: :user_id, dependent: :destroy
  has_many :groups, dependent: :destroy
  validates :name, :email, presence: true
end
