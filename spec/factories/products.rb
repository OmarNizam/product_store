# spec/factories/products.rb

FactoryGirl.define do
   factory :product do
     name "product"
     description       { Faker::Lorem.sentence(40) }
      price             { Faker::Commerce.price }

      trait :in_stock do
        in_stock true
      end

      trait :out_of_stock do
        out_of_stock false
      end
    end
end
