require 'faker'
FactoryGirl.define do
  factory :actor do |f|
    
    f.name Faker::Name.name
    f.bio Faker::Lorem.sentences
    f.age Faker::Number.number(2)
  end
end
