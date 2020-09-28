class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :guest_name, null: false
      t.date :pickup_day, null: false
      t.string :houseroom, null: false
      t.integer :room_no
      t.string :phone_number
      t.string  :remark
      t.timestamps
    end
  end
end
