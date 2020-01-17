class Product < ApplicationRecord
  # scope :most_reviews, -> { where(product_id: id) }
  # scope :most_recent, -> { where(product_id: id) }
  # scope :local_products, -> { where(product_id: id) }
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
