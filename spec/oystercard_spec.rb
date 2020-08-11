require 'Oystercard'

describe Oystercard do

  it "Expect oystercard to respond to balance method" do
    expect(subject).to respond_to(:balance)
  end

  it "Expects balance to be zero" do
    oystercard = Oystercard.new
    expect(oystercard.balance).to eq (0)
  end

  it "Expects oystercard to respond to 'top_up'" do
    expect(subject).to respond_to(:top_up).with(1).argument
  end

  describe "top_up" do
  it "expects oystercard to topup amount put in" do
    expect(subject.top_up(2)).to eq 2
    end
  it "raises error if maximum amount is exceeded" do
    maximum_balance = Oystercard::MAX_BALANCE
    expect {subject.top_up(91)}.to raise_error "exceeded #{maximum_balance} the maximum balance"
  end
  end

  describe "deduct" do
    it "expects oystercard to deduct money from card" do
      subject.top_up(30)
      expect(subject.deduct(10)).to eq 20
    end
  end

  describe 'in_journey?' do
    it 'is not initialized to be on a journey' do
      expect(subject).to_not be_in_journey
    end
  end

  describe 'touch_in' do
    it "changes in_journey? from false to true" do
      subject.top_up(5)
      subject.touch_in
      expect(subject).to be_in_journey
    end
    it "raises an error if not enough money on card" do
      expect{subject.touch_in}.to raise_error "not enough funds"
    end
  end

  describe 'touch_out' do
    it 'reverts in_journey? back to false' do
      subject.top_up(5)
      subject.touch_in
      subject.touch_out
      expect(subject).to_not be_in_journey
    end
  end
end
