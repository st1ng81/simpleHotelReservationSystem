class Lodge < ActiveRecord::Base
	has_many :rooms, :dependent => :destroy
	has_many :room_types, :dependent => :destroy
end
