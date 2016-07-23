class BasketsController < ApplicationController
    def create
        @basket = Basket.new(customer_id: params[:customer_id])
        params[:products].each do |product_id|
            @basket.products << Product.find(product_id)
        end
    end
end
