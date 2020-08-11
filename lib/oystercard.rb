class Oystercard

  attr_reader :balance

  def initialize
    @balance = 0
  end

    MAX_BALANCE = 90

  def top_up(amount)
    fail "exceeded #{MAX_BALANCE} the maximum balance" if @balance + amount > MAX_BALANCE
    @balance += amount
    amount
  end

  def deduct(amount)
    @balance -= amount
    @balance
  end

  def in_journey?
    false
  end
end
