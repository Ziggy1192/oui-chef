class Chef < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :cuisine, presence: true
  validates :price, presence: true
  validates :profile, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :cuisine ],
  associated_against: {
    user: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
