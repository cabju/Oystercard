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
  it "expects oystercard to topup amount put it" do
    expect(subject.top_up(2)).to eq 2
    end
  end
end
