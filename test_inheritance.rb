class Food 

  attr_accessor :name , :price , :avaliblity

  def initialize
   @name = name 
   @price = 10
   @avaliblity = true
  end

end

class Frut < Food
  attr_accessor :sesone

  def initialize
    super
    @sesone = "Winter"
  end
end

puts Food.new

puts Frut.new

