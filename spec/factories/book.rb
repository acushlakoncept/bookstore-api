FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    created_by { Faker::Book.author }
    category_id nil
  end
end
