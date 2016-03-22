class ChangeHotelIdToLodgeId < ActiveRecord::Migration
  def change
  	change_table :room_types do |t|
  		t.rename :hotel_id, :lodge_id
  	end	
  end
end
