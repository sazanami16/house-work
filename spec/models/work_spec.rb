require 'rails_helper'

RSpec.describe Work, type: :model do
  before do
    @work = FactoryBot.build(:work)
  end

  describe '家事の保存' do
    context '家事が保存できる場合' do
      it '必要事項が入力されていれば商品は保存される' do
        expect(@work).to be_valid
      end
    end

    context '家事の保存がうまくいかないとき' do
      it '家事名が空だと登録できない' do
        @work.name = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Name can't be blank")
      end
      it '家事のルールが空だと登録できない' do
        @work.rule = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Rule can't be blank")
      end
      it '家事の負担レベルが未選択だと登録できない' do
        @work.weight_id = 1
        @work.valid?
        expect(@work.errors.full_messages).to include('Weight must be other than 1')
      end
      it '担当者が空だと登録できない' do
        @work.parson = ''
        @work.valid?
        expect(@work.errors.full_messages).to include("Parson can't be blank")
      end
    end
  end
end
