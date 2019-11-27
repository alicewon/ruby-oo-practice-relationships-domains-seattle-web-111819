require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


listing1 = Listing.new("SanFran")
listing2 = Listing.new("Dallas")
listing3 = Listing.new("Seattle")

guest1 = Guest.new("Josh")
guest2 = Guest.new("Joe")
guest3 = Guest.new("John")
guest4 = Guest.new("John")
guest5 = Guest.new("Alice")

trip1 = Trip.new(listing1, guest5)
trip2 = Trip.new(listing2, guest4)
trip3 = Trip.new(listing3, guest4)
trip4 = Trip.new(listing2, guest3)
trip5 = Trip.new(listing2, guest2)
trip6 = Trip.new(listing1, guest1)

# Pry.start
binding.pry
0
