FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name             {'テスト'}
    first_name            {'テスト'}
    last_name_kana        {last_name}
    first_name_kana       {first_name}
    birthday              {Faker::Date.birthday}
  end
end