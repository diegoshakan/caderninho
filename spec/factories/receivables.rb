FactoryBot.define do
  factory :receivable do
    title { "MyString" }
    description { "MyText" }
    value { "9.99" }
    date { "2022-06-27" }
    user { nil }
  end
end
