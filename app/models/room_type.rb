class RoomType < ActiveRecord::Base
	has_many :rooms
	belongs_to :lodge
end
