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

  def cars_by_make(company)
    counter = []
    self.inventory.each do |car|
      if car.make == company
      counter << car
      end
    end
    return counter
  end

  def has_inventory?
    self.inventory.count != 0
  end

  def total_value
    total = 0
    self.inventory.each do |car|
      total += car.total_cost 
    end
    return total
  end

  def details
    detail_hash = ['total value': self.total_value, 'address': @location]
  end


end