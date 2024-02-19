class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :items_state
  belongs_to :shipping_burden
  belongs_to :territory
  belongs_to :carry_dey
  belongs_to :user
  has_one_attached :item_image

  validates :item_image, presence: true
  validates :items_name, presence: true
  validates :explanation, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :items_state_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :shipping_burden_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :territory_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :carry_dey_id, numericality: { other_than: 1 , message: "can't be blank"}

  with_options presence: true, format: { with: /\A[0-9]+\z/ } do
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 },
                      presence: { message: "300円以上9.999.999円以内で入力してください"}
  end
end
