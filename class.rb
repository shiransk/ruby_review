class Employee

  attr_reader :first_name
  attr_accessor :last_name

  def initialize(employe_hash)
    @first_name = employe_hash[:first_name]
    @last_name = employe_hash[:last_name]
    @salary = employe_hash[:salary]
    @active = true
  end

  def set_first_name(new_name)
    @first_name = new_name
  end

end

class Maneger < Employee
  attr_reader :employes
  def initialize(employe_hash)
    super # will need to putt super to inherite intante variebls in initialize metohd.
    @employes = ["shiran" , "Jhon"]
  end

  def fire_employee
    puts "Fired!!!"
  end
end


maneger = Maneger.new({last_name: "Bob" ,first_name: "Barker" ,salary: 100000})

# puts maneger.employes

puts maneger.last_name = "aaa"