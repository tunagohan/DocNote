FactoryBot.define do
  factory :user do
    username 'fizzbazz'
    email 'foo@example.com'
    password 'hogehoge'
    password_confirmation 'hogehoge'
  end
end
