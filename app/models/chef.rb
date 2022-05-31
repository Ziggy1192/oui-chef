class Chef < ApplicationRecord
  belongs_to :user
  validates :speciality, presence: true
  validates :cuisine, presence: true
  validates :price, presence: true
  validates :profile, presence: true
end


# cuisine [japanese, chinese, indian, middle-eastern, italian, french, scottish, american, mexican, cuban, scandinavian, thai, vietnamese, malaysian]
