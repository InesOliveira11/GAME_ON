class Game < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_description_and_console,
                  against: %i[name description console],
                  using: {
                    tsearch: { prefix: true }
                  }
end
