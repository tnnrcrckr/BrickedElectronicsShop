class ProductsController < ApplicationController
  def show
    @products = Product.all.paginate(page: params[:page])
  end
end
