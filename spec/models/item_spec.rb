require 'rails_helper'
describe Item do
  describe '#create' do
    it "guest_nameがない場合は登録できないこと" do
      item = Item.new(guest_name: nil, pickup_day: "2020-12-16", houseroom: "A倉庫")
      item.valid?
      expect(item.errors[:guest_name]).to include("can't be blank")
    end

    it "pickup_dayがない場合は登録できないこと" do
      item = Item.new(guest_name: "フジイ", pickup_day: nil, houseroom: "A倉庫")
      item.valid?
      expect(item.errors[:guest_name]).to include("can't be blank")
    end

    it "houseroomがない場合は登録できないこと" do
      item = Item.new(guest_name: "フジイ", pickup_day: "2020-12-16", houseroom: nil)
      item.valid?
      expect(item.errors[:guest_name]).to include("can't be blank")
    end
  end
end