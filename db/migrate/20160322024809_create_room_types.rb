class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.integer :total_rooms, null: :false
      t.string :room_type, null: :false
      t.integer :hotel_id, null: :false, index: true 
      t.timestamps null: false
    end
  end
end
