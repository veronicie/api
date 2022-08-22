FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "Mango #{n}" }
    content { "Mangos are the best for unicorns." }
    sequence(:slug) { |n| "mango_#{n}" }
  end
end
