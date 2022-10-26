class Purchase < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :groups_purchases
  has_many :groups, through: :groups_purchases
  has_one_attached :image
end
