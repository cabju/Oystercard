require "journey"

describe Journey do
  let(:station) { double :station, zone: 1 }
  subject { described_class.new(station) }

  it "checks if journey has finished" do
    expect(subject.finish).to eq false
  end

  it "calculates the fare of the journey" do
    expect(subject.calculate_fare).to eq 6
  end

  it "checks if the journey is compleate" do
    expect(subject.complete?).to eq false
  end

  it "has an entry station" do
    expect(subject.entry_station).to eq station
  end

end
