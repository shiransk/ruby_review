class Pet

attr_reader :breed , :age , :name

 def  initialize(pet_hash)
   @breed = pet_hash[:breed]
   @age= pet_hash[:age]
   @name = pet_hash[:name]
 end
end

 class Food < Pet

  attr_reader :shelf_life

  def initialize(pet_hash)
    super
    @shelf_life = "3 Weeks"
  end

end

wafwaf = Pet.new({breed: "dog" , age: 7 , name: "rocki" })

fish = Food.new({breed: "fish" , age: 1 , name: "Nemo" })

puts fish.shelf_life


# puts "My pet store"

# pet1 = {breed: "dog" , age: 7 , name: "wafwaf" }
# pet2 = {breed: "cat" , age: 12 , name: "meowmewo"}
# pet3 = {:breed => "snake" , :age => 55 , :name => "pssssss"}
