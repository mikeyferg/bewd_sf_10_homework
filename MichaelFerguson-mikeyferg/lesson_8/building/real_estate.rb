require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'



def create_building
  puts "-----------------New Building-------------------"
  puts "What is the address of the building?"
  address = gets.strip

  puts "What is the name of building?"
  building_name = gets.strip
  building = Building.new(address, building_name)

  puts "How mant units?"
  num_apts = gets.strip.to_i
  building.apartments = Apartment.apartment_creator(num_apts)

  building.apartments.each do |apartment|
    num = Random.rand(0...10)
    if num <= 8
      apartment.renter = Renter.random_renter_generator
    end
  end

  puts building
  building.apartments.each do |apartment|
    puts apartment
    apartment.print_renter_info
   end
end

create_building
