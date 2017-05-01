class BankAccount

  attr_accessor :bank_account, :balance, :status
  attr_reader :name

  def initialize(bank_account)
    @bank_account = bank_account
    @name = "Avi"
    @balance = 1000
    @status = 'open'
  end

  def deposit(num)
    self.balance += num
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    self.status == "open" && self.balance > 0
  end

  def close_account
    self.status = 'closed'
  end

end
