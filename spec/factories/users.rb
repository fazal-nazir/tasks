# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:first_name) { |n| Faker::Name.unique.name + n.to_s }
    sequence(:last_name) { |n| Faker::Name.unique.name + n.to_s }
    sequence(:email) { |n| Faker::Internet.unique.email + n.to_s }
    password { Faker::Internet.password }
    role { 0 }
  end
end
