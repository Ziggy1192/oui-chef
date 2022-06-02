class Chef < ApplicationRecord
  CATEGORIES = %w[vegetarian vegan seafood meat dessert]
  belongs_to :user
  validates :speciality, presence: true, inclusion: { in: CATEGORIES }
  validates :cuisine, presence: true
  validates :price, presence: true
  validates :profile, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :cuisine, :profile ],
  associated_against: {
    user: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
