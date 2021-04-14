class Genre < ApplicationRecord
  has_many :novels
  has_many :authors, through: :novels
end
