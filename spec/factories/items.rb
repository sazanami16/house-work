FactoryBot.define do
  factory :item do
    name { Faker::Lorem.sentence }
    quantity { 5 }
    need_id { 2 }
    association :work
  end
end
