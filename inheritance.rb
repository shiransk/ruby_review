class Vehicle

 def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :fuel

  def initialize
    super
    @fuel = 50
    @make = "Honda"
    @model = "Acord"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

    attr_accessor :speed , :type , :weight

  def initialize 
    super 
    @speed = 100
    @type = "Bmx"
    @weight = "100 puonds"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

class MountenBike < Bike
  def vroom
    puts "vroooooooooom"
  end
end

test = Bike.new 

puts test.type 