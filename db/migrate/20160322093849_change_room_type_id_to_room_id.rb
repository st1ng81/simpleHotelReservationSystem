class ChangeRoomTypeIdToRoomId < ActiveRecord::Migration
  def change
  	change_table :bookings do |t|
  		t.rename :room_type_id, :room_id
  	end	
  end
end
