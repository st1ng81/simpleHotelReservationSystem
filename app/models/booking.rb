class Booking < ActiveRecord::Base
	BOOKING_STATUS = ["Booked", "Cancelled"]
	belongs_to :lodge
	belongs_to :room
end
