# require 'pry'

class Building
  attr_accessor :address, :building_name, :apartments

  def initialize(address, building_name)
    @address = address
    @building_name = building_name
    @apartments = []
  end

  def to_s
    "#{building_name} at #{address} has #{apartments.count} apartments."
  end
end
