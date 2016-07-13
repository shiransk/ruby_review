class Employee

  attr_reader :first_name

  def initialize(employe_hash)
    @first_name = employe_hash[:first_name]
    @last_name = employe_hash[:last_name]
    @salary = employe_hash[:salary]
    @active = true
  end

  # def first_name
  #   @first_name
  # end

  def set_first_name(new_name)
    @first_name = new_name
  end

end

employe1 = Employee.new({last_name: "Bob" ,first_name: "Barker" ,salary: 100000})

puts employe1.first_name


# puts employe1.first_name

# employe1.set_first_name("sally")

# puts employe1.first_name