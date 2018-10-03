class Cinema < ApplicationRecord
  has_many :screens, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :location,presence: true
  validates :constructed, numericality: true
end
