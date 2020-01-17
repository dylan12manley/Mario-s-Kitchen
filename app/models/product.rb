class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_save(:titleize_name)

  private
    def titleize_name
      self.name = self.name.titleize
    end
end
