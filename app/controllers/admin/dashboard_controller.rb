class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]
  
  def show
    @product_count = Product.all.count
    @evergreens_count = Product.where(category_id: 1).count
    @shrubs_count = Product.where(category_id: 2).count
    @trees_count = Product.where(category_id: 3).count
  end
end
