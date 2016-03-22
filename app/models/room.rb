class Room < ActiveRecord::Base
	belongs_to :lodge
	belongs_to :room_type
end
