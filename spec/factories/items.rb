FactoryBot.define do
  factory :item do
    items_name            {'テスト'}
    explanation           {'テスト'}
    category_id           {2}
    items_state_id        {2}
    shipping_burden_id    {2}
    territory_id          {2}
    carry_dey_id          {2}
    price                 {3333333}

    association :user

    after(:build) do |item|
      item.item_image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
