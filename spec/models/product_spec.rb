require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it ( "creates a new product") do
    product = Product.create({name: "Apple", cost: 1.10, country_of_origin: "USA" })
      expect(product).to(eq(name: "Apple", cost: 1.10, country_of_origin: "USA"))
  end
end
