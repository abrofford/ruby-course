class BankAccounts

  attr_accessor :checking, :savings

  def initialize(checking, savings)
    @checking = checking
    @savings = savings
  end
end

class Transaction
  def initialize(deposit, withdrawl, close)
    @deposit = deposit
    @withdrawl = withdrawl
    @close = close
  end

  def deposit
    if @checking
      @checking + @deposit
    else
      puts "Enter deposit amount: "
  end

  def withdrawl
    if @withdrawl
      @checking - @withdrawl
    else
      puts "Enter withdrawl amount: "
  end

  def close
    if @close
      @close.delete
    else
      puts "Enter checking or savings to close:"
end

loop do
  puts "Do you want to access your checking or savings account?: "

end
