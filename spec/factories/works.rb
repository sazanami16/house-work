FactoryBot.define do
  factory :work do
    name { Faker::Lorem.sentence }
    rule { Faker::Lorem.sentence }
    weight_id { 2 }
    association :user
  end
end