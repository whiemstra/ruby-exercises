class Wallet
  #attr_reader :penny, :nickel, :dime, :quarter, :dollar

  def initialize
    @common_coins = { :penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100}
    @amount = 0
  end

  def <<(money)
    @amount += @common_coins[money]
  end

  def cents
    @amount
  end

  def take(*coins)
    coins.each do |coin|
    @amount -= @common_coins[coin] unless @common_coins[coin] > @amount
    end
  end
end


# def penny
#   @penny
# end

