class Employee
  attr_reader :first_name, :last_name
  attr_accessor :active

  def initialize(employee_hash)
    @first_name = employee_hash[:first_name]
    @last_name = employee_hash[:last_name]
    @salary = employee_hash[:salary]
    @active = employee_hash[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year. and the status is #{@active}"
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

class Manager < Employee
  def initialize(employee_hash)
    super
    @employees = employee_hash[:employees]
  end

  def give_all_raises
    @employees.each do |worker|
      worker.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |worker|
      worker.active = false 
    end
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.fire_all_employees
puts employee1.print_info
puts employee2.print_info


# manager.print_info
# manager.send_report
