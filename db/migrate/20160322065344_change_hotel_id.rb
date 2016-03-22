class ChangeHotelId < ActiveRecord::Migration
  def change
  	change_table :rooms do |t|
  		t.rename :hotel_id, :lodge_id
  	end	
  end
end
