require 'rails_helper'

RSpec.describe LocationService, type: :model do
  it "returns a location given a valid customer id" do
    customer_id = 1
    expect(LocationService::LocationService.get_location(customer_id)).to eq("LONDON")
  end

  it "should raise an exception with an invalid customer id" do
    customer_id = "NONE"
    expect { LocationService::LocationService.get_location(customer_id) }.to raise_exception(LocationService::LocationNotFoundError)
  end
end
