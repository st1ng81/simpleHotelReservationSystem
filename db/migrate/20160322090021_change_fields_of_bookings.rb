class ChangeFieldsOfBookings < ActiveRecord::Migration
  def change
  	change_table :bookings do |t|
  		t.rename :hotel_id, :lodge_id
  	end		
  	remove_column :bookings, :user_id, :integer, null:false, index: true
  	add_column :bookings, :room_type_id, :integer, null:false, index: true
  	
  end
end
