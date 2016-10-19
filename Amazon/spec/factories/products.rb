FactoryGirl.define do
  factory :product do
    sequence(:title) {|n| "Hello World #{n}"}
    description {Faker::Hipster.paragraph}
    price {rand(100) + 1}
  end
end
