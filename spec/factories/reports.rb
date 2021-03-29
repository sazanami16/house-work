FactoryBot.define do
  factory :report do
    association :user
    association :work
    message { Faker::Lorem.sentence }
    
    after(:build) do |i|
      i.image.attach(io: File.open('public/test.png'), filename: 'test_image.JPEG')
    end
  end
end
