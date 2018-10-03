class Cinema < ApplicationRecord
  has_many :screens, dependent: :destroy
end
