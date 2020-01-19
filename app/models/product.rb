class Product < ApplicationRecord
  scope :most_reviews, -> {(
    select("product.id, product.name, count(review.id) as review_count")
    .joins(:review)
    .group("product.id")
    .order("tasks_count DESC")
    .limit(1)
    )}
  scope :most_recent, -> { order(created_at: :desc).limit(3)}
  scope :local_products, -> { where(country_of_origin: "USA") }
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
  before_save(:titleize_name)

  private
    def titleize_name
      self.name = self.name.titleize
    end
end
