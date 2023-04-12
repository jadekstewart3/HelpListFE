FactoryBot.define do
  factory :organization do
    name { Faker::Company.name }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr}
    zip_code { Faker::Address.zip }
    email { Faker::Internet.email }
    password { Faker::Internet.password  }
    phone_number { Faker::PhoneNumber.phone_number }
  end
end