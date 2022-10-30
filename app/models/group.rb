class Group < ApplicationRecord
  belongs_to :user
  has_many :groups_purchases
  has_many :purchases, through: :groups_purchases, dependent: :destroy
  has_one_attached :image
  validates :name, :image, presence: true
end
