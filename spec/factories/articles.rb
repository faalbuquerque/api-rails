FactoryBot.define do
  factory :article do
    sequence(:title) {|n| "Title-n#{n}"}
    content { "MyText" }
    sequence(:slug) {|n| "url-n#{n}"}
  end
end
