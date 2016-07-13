class Pet

attr_reader :breed , :age , :name

 def  initialize(pet_hash)
   @breed = pet_hash[:breed]
   @age= pet_hash[:age]
   @name = pet_hash[:name]
 end

end

wafwaf = Pet.new({breed: "dog" , age: 7 , name: "rocki" })

puts wafwaf.age

# puts "My pet store"

# pet1 = {breed: "dog" , age: 7 , name: "wafwaf" }
# pet2 = {breed: "cat" , age: 12 , name: "meowmewo"}
# pet3 = {:breed => "snake" , :age => 55 , :name => "pssssss"}
