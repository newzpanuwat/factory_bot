FactoryBot.define do
  factory :user do
    name 'John'
    email 'john.doe@example.com'
    password '12345678'
  end

  factory :random_user, class: User do
    first_name { Faker::Name.name }
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password(8) }
  end
end