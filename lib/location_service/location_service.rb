class LocationService::LocationNotFoundError < StandardError
end

class LocationService::LocationService
     CUSTOMERS = Hash["1" => "LONDON", "2" => "LIVERPOOL"]

    def self.get_location(customer_id)       
        if CUSTOMERS[customer_id.to_s]
            return CUSTOMERS[customer_id.to_s]
        else
          raise LocationService::LocationNotFoundError
        end
    end
end