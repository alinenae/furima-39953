require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '出品できるとき' do
      it 'item_imageからpriceが存在すれば登録できる' do
        expect(@item).to be_valid
      end
    end
    context '出品できないとき'
    it 'item_imageが空では登録できない' do
      @item.item_image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Item image can't be blank")
    end
    it 'items_nameが空では登録できない' do
      @item.items_name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Items name can't be blank")
    end
    it 'explanationが空では登録できない' do
      @item.explanation = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Explanation can't be blank")
    end
    it 'category_idが空では登録できない' do
      @item.category_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank")
    end
    it 'items_state_idが空では登録できない' do
      @item.items_state_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Items state can't be blank")
    end
    it 'shipping_burden_idが空では登録できない' do
      @item.shipping_burden_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Shipping burden can't be blank")
    end
    it 'territory_idが空では登録できない' do
      @item.territory_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Territory can't be blank")
    end
    it 'carry_dey_idが空では登録できない' do
      @item.carry_dey_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Carry dey can't be blank")
    end
    it 'priceが空では登録できない' do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price 300円以上9.999.999円以内で入力してください")
    end
    it 'priceが300円以下では登録できない' do
      @item.price = '299'
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
    end
    it 'priceが9.999.999円以上では登録できない' do
      @item.price = '10000000'
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
    end
    it 'priceが全角では登録できない' do
      @item.price = '３００'
      @item.valid?
      expect(@item.errors.full_messages).to include("Price is not a number")
    end
  end
end