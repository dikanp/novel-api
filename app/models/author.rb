class Author < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3}

  has_many :novels
  has_many :genres, through: :novels
end
