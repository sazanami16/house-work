require 'rails_helper'

RSpec.describe Report, type: :model do
  before do
    @report = FactoryBot.build(:report)
  end

  describe '報告の保存' do
    context '報告が保存できる場合' do
      it '必要事項が入力されていれば報告は保存される' do
        expect(@report).to be_valid
      end
    end
    
    context '報告の保存できない場合' do
      it 'メッセージが空だと登録できない' do
        @report.message = nil
        @report.valid?
        expect(@report.errors.full_messages).to include("Message can't be blank")
      end
      it 'imageが空だと登録できない' do
        @report.image = nil
        @report.valid?
        expect(@report.errors.full_messages).to include("Image can't be blank")
      end
      it 'ユーザが紐付いていないと登録できない' do
        @report.user = nil
        @report.valid?
        expect(@report.errors.full_messages).to include('User must exist')
      end
      it '家事が紐付いていないと商品は保存できない' do
        @report.work = nil
        @report.valid?
        expect(@report.errors.full_messages).to include('Work must exist')
      end
    end

end

end
