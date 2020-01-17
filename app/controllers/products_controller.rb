class ProductsController < ApplicationController

def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully created."
      redirect_to products_path
    else
      render :new
    end
  end
