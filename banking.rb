class BankAccount
  
attr_accessor :balance , :account_type

  def initialize(starting_balance, account_type)
    @balance = starting_balance
    @account_type = account_type
  end

  # set value =>   danish.balnce = 50

  # def balance        
  #   @balance
  # end

  # def account_type
  #   @account_type
  # end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    if @balance - (amount * 1.1) >= 0 && @account_type == "CD"
      @balance = (@balance - amount) - (amount * 0.1)
      return amount
    elsif @balance - amount >= 0 && @account_type != "CD"
      @balance = @balance - amount
      return amount
    else
      return 0      
    end
  end

  def transfer_money_to(account, amount)
    if @account_type == "CD" || account.account_type == "CD"
      puts "Unacceptable!!!!!!!"
    else
      funds_to_transfer = withdraw(amount)
      account.deposit(funds_to_transfer)
    end
  end
end


danish = BankAccount.new(10000, "savings")
mark = BankAccount.new(0, "checkings")

danish.transfer_money_to(mark, 8000)

puts danish.balance = 200
puts danish.balance
# puts mark.balance
