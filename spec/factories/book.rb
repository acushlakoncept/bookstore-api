# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    category_id { Faker::Number.within(range: 1..10) }
  end
end
