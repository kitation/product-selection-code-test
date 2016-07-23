FactoryGirl.define do
    factory :product do
        sequence :name do |n|
            "product#{n}"
        end

        trait :sports do
            category "SPORTS"
        end

        trait :news do
            category "NEWS"
        end

        trait :london do
            location "LONDON"
        end

        trait :liverpool do
            location "LIVERPOOL"
        end
    end
end