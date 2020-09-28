class Item < ApplicationRecord
  def self.search(search)
    return Item.all unless search
    Item.where('guest_name LIKE(?)', "%#{search}%")
  end

  validates :guest_name, presence: true, format: { with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/ }
  validates :remark, length: {maximum: 100}
end
