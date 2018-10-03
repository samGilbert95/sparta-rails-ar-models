class Screen < ApplicationRecord
  belongs_to :cinema
  validates :film_playing, presence: true, format: {:with => /[a-zA-Z\-\_20%]+/}
end
