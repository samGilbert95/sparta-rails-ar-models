class Screen < ApplicationRecord
  belongs_to :cinema
  validates :film_playing, presence: true, format: {:with => /[a-zA-Z\-\_20%]+/}
  validates :cinema_id, uniqueness: true, presence: true
  validates :screen_no, uniqueness: true, presence: true
end
