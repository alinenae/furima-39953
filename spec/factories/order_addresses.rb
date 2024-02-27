FactoryBot.define do
  factory :order_address do
    post_code                {"111-1111"}
    prefectures_id           {2}
    city                     {'テスト'}
    address                  {'テスト'}
    building                 {'テスト'}
    phone_number             {11111111111}
    token                    {"tok_abcdefghijk00000000000000000"}
  end
end
