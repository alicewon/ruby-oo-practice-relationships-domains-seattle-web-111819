class Guest
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

def listings #guest1.listings
#listings
#returns an array of all listings a guest has stayed at

end

def trips #guest1.trips
#trips
#returns an array of all trips a guest has made
Trip.all.select {|trip| trip.guest == self}
end

def trip_count #guest1.trip_count
#trip_count
#returns the number of trips a guest has taken
trips.count

end

def self.pro_traveller #Guest.pro_traveller
#.pro_traveller
#returns an array of all guests who have made over 1 trip


@@all.select {|guest| guest.trip_count > 1}
end

def self.find_all_by_name(name) #Guest.find_all_by_name("John")
#.find_all_by_name(name)
#takes an argument of a name (as a string), returns the all guests with that name

@@all.select {|guest|guest.name == name}

end

end