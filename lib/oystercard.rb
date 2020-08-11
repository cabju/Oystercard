class Oystercard

  attr_reader :balance

  def initialize
    @balance = 0
  end

    MAX_BALANCE = 90

  def top_up(amount)
    fail "exceeded maximum balance" if @balance + amount > MAX_BALANCE
    @balance += amount
    amount
  end
end
