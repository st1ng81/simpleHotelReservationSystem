class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.integer :hotel_id, null: :false, index: true
      t.integer :room_type_id, null: :false, indexx: true
      t.integer :room_occupants, null: :false
      t.integer :room_extra_occupants
      t.float :room_extra_bed_charge
      t.float :room_rate, null: :false
      t.float :room_extra_person_charge
      t.boolean :active
      t.timestamps null: false
    end
  end
end
