class Listing
  attr_reader :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  
  def self.all
    @@all
  end




def guests # listing1.guests
#returns an array of all guests who have stayed at a listing
  trips.map {|trip| trip.guest}
end

def trips # listing1.trips
#returns an array of all trips at a listing
Trip.all.select {|trip| trip.listing == self}
end

def trip_count # listing1.trip_count
#returns the number of trips that have been taken to that listing
trips.count
end

def self.find_all_by_city(city) # Listing.find_all_by_city("Dallas")
# takes an argument of a city name (as a string) and returns all the listings for that city
@@all.select {|listing|listing.city == city}
end

def self.most_popular # Listing.most_popular
# finds the listing that has had the most trips
@@all.max_by {|listing|listing.trip_count }
end
end