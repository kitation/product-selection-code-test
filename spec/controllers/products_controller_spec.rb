require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
    describe "GET #sports" do
        before(:all) do
            @liverpool_news = create(:product, :news, :liverpool)
            @liverpool_sports = create_list(:product, 2, :sports, :liverpool)
            @london_sports = create_list(:product, 2, :sports, :london)
        end

        it "returns all the sports products for the location" do
            customer_id = 2
            get :sports, customer_id: customer_id
            expect(assigns(:products)).to eq(@liverpool_sports)
        end

        it "renders the partial template" do
            customer_id = 2
            get :sports, customer_id: customer_id
            expect(response).to render_template("products/_item_list")
        end
    end
end