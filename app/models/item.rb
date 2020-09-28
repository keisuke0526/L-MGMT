class Item < ApplicationRecord
  validates :guest_name, presence: true, format: { with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/ }
  validates :remark, length: {maximum: 100}
end
