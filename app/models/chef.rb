class Chef < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  # validates :cuisine, presence: true
  # validates :price, presence: true
  # validates :profile, presence: true
end
