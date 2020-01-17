class Review < ApplicationRecord
  belongs_to :product
  validates_length_of :content_body, in: 50..250
  validates_numericality_of :rating, less_than: 6
  validates_numericality_of :rating, greater_than_or_equal_to: 1
  # message: "review must be longer than 50 charactors and shorter than 250."
end
