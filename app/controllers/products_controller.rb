class ProductsController < ApplicationController
    def index
        @products = Product.where(location: nil)
    end

    def sports
        location = LocationService::LocationService.get_location params[:customer_id]
        @products = Product.where(location: location, category: "SPORTS")
        render partial: "item_list", locals: { products: @products }
    end
end
