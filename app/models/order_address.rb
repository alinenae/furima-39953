class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :post_code, :prefectures_id, :city, :address, :building, :phone_number, :token

  with_options presence: true do
    validates :post_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :prefectures_id, numericality: { other_than: 1 , message: "can't be blank"}
    validates :city
    validates :address
    validates :phone_number, format: {with: /\A\d{10,11}\z/, message: "10桁以上11桁以内で入力してください"}
    validates :token
    validates :user_id
    validates :item_id
  end

  def save
   order = Order.create(item_id: item_id, user_id: user_id)
   Address.create(post_code: post_code, prefectures_id: prefectures_id, city: city, address: address, building: building, phone_number: phone_number, order_id: order.id)
  end
end