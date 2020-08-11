class Oystercard

  attr_reader :balance

  def initialize
    @balance = 0
    @in_use = false
  end

    MAX_BALANCE = 90
    MINIMUM_AMOUNT = 1

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
    @in_use
  end

  def touch_in
    fail "not enough funds." if @balance < MINIMUM_AMOUNT
    @in_use = true
  end

  def touch_out
    @in_use = false
    deduct(MINIMUM_AMOUNT)
  end
end
