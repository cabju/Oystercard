require_relative 'oystercard.rb'

class Journey

  MINIMUM_AMOUNT = 1
  PENTALTY_FARE = 6

  def initalize
    @oystercard = nil
    @entry_station = station
    @exit_station = nil
  end

  def finish
    @exit_station != nil
  end

  def calculate_fare
    if @entry_station && @exit_station
       MINIMUM_AMOUNT
    else
      PENTALTY_FARE
    end
  end

  def complete?
    @oystercard = Oystercard.new
    if @oystercard.in_journey? != nil
      return false
    else
      return true
    end
  end

  def entry_station
      @entry_station
  end
end
