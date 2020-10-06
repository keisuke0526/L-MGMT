require 'rails_helper'
describe Item do
  describe '#create' do
    it "guest_nameがない場合は登録できないこと" do
      item = build(:item, guest_name: nil)
      item.valid?
      expect(item.errors[:guest_name]).to include("can't be blank")
    end

    it "pickup_dayがない場合は登録できないこと" do
      item = build(:item, pickup_day: nil)
      item.valid?
      expect(item.errors[:guest_name]).to include("can't be blank")
    end

    it "houseroomがない場合は登録できないこと" do
      item = build(:item, houseroom: nil)
      item.valid?
      expect(item.errors[:guest_name]).to include("can't be blank")
    end
  end
end