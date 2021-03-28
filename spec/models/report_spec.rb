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
end

end
