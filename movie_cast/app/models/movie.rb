class Movie < ApplicationRecord
  has_many :descriptions
  has_many :casts, through: :descriptions
end
