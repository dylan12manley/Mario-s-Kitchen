class Review < ApplicationRecord
  belongs_to :product
  validates_length_of :content_body, in: 50..250,
  message: "review must be longer than 50 charactors and shorter than 250."
end
