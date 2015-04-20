class Money
  def initialize
    @bank_account = 0
  end

  def earn(paycheck)
    @bank_account += paycheck
  end

  def spend(purchase)
    @bank_account -= purchase
  end

  def amount
    @bank_account
  end
end
