class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :hotel_id, index: true, null: :false
      t.integer :user_id, index:true, null: false
      t.date :checkin_date, null: false
      t.time :checkin_time, null: false
      t.date :checout_date, null: :false
      t.time :checkout_time, null: false
      t.float :total_amount, null: false
      t.integer :no_of_days
      t.integer :adult_count
      t.integer :children_count
      t.string :status
      t.timestamps null: false
    end
  end
end
