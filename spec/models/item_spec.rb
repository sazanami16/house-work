require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '消耗品の保存' do
    context '消耗品が保存できる場合' do
      it '必要事項が入力されていれば商品は保存される' do
        expect(@item).to be_valid
      end
    end

    context '消耗品の保存がうまくいかないとき' do
      it '消耗品名が空だと登録できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it '使用量が空だと登録できない' do
        @item.quantity = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Quantity can't be blank")
      end
      it '補充のカテゴリーが未選択だと登録できない' do
        @item.need_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include('Need must be other than 1')
      end
      it '家事が紐付いていないと商品は保存できない' do
        @item.work = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Work must exist')
      end
    end
  end
end
