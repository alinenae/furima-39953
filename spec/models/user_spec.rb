require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nicknameからbirthdayが存在すれば登録できる' do
      end
    end
    context '新規登録できないとき'
    it 'nicknameが空では登録できない' do
      # nicknameが空では登録できないテストコードを記述します
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      # emailが空では登録できないテストコードを記述します
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it '重複したemailが存在する場合は登録できない' do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
    end
    it 'emailは@を含まないと登録できない' do
      @user.email = 'abcdefg'
      @user.valid?
    end
    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
    end
    it 'passwordが6文字以上ないと登録できない' do
      @user.password = '12345'
      @user.valid?
    end
    it 'passwordが英数字混合じゃないと登録できない' do
      @user.password = '123456'
      @user.valid?
    end
    it 'passwordとpassword_confirmationが不一致では登録できない' do
      @user.password = '123456a'
      @user.password_confirmation = '1234567'
      @user.valid?
    end
    it 'last_nameが空では登録できない' do
      @user.last_name = ''
      @user.valid?
    end
    it 'first_nameが空では登録できない' do
      @user.first_name = ''
      @user.valid?
    end
    it 'last_nameが漢字、ひらがな、カタカナじゃないと登録できない' do
      @user.last_name = 'test'
      @user.valid?
    end
    it 'first_nameが漢字、ひらがな、カタカナじゃないと登録できない' do
      @user.first_name = 'test'
      @user.valid?
    end
    it 'last_name_kanaが空では登録できない' do
      @user.last_name_kana = ''
      @user.valid?
    end
    it 'first_name_kanaが空では登録できない' do
      @user.first_name_kana = ''
      @user.valid?
    end
    it 'last_name_kanaが漢字、ひらがな、カタカナじゃないと登録できない' do
      @user.last_name_kana = 'test'
      @user.valid?
    end
    it 'first_name_kanaが漢字、ひらがな、カタカナじゃないと登録できない' do
      @user.first_name_kana = 'test'
      @user.valid?
    end
    it '生年月日が空では登録できない' do
      @user.birthday = ''
      @user.valid?
    end
  end
end
