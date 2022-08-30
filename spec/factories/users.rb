FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "mango#{n}" }
    name { "Mango Banana" }
    url { "http://example.com" }
    avatar_url { "http://example.com/avatar" }
    provider { "github" }
  end
end
