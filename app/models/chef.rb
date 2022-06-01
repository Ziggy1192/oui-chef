class Chef < ApplicationRecord
  CATEGORIES = %w[vegetarian vegan seafood meat dessert]
  belongs_to :user
  validates :speciality, presence: true, inclusion: { in: CATEGORIES }
  validates :cuisine, presence: true
  validates :price, presence: true
  validates :profile, presence: true
end
