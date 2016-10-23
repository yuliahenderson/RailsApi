class Cast < ApplicationRecord
  has_many :descriptions
  has_many :movies, through: :descriptions
end
