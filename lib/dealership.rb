require_relative 'car'

class Dealership
  attr_reader :name
  attr_reader :location
  attr_reader :inventory
  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
    
  end

  def inventory_count
    self.inventory.count
  end

  def add_car(car)
    @inventory.push car
  end
end