class Apartment
  #require 'pry'
  require_relative('renter')
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name, sqft, bedrooms, bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    @rent = nil
  end

  def to_s
    "Unit #{name} is #{sqft} square feet."
  end

  def not_occupied?
    renter.nil?
  end

  def print_renter_info
    if not_occupied?
      puts "This unit is vacant. \n \n"
    else
      puts "#{renter} \n \n"
    end
  end

  def self.apartment_creator(num)
    apt_array = []
    num.times do |num|
      unit_number = num + 1
      sqft = Random.rand(800...2000)
      bedrooms = Random.rand(1...3)
      bathrooms = Random.rand(1...3)
      apt = Apartment.new(unit_number, sqft, bedrooms, bathrooms)
      apt_array.push(apt)
    end
    apt_array
  end
end
