require 'faker'
FactoryGirl.define do
  factory :movie do |f|

    f.title Faker::Book.title
    f.description Faker::Lorem.sentences
    f.releasedate Faker::Number.number(4)
  end
end
