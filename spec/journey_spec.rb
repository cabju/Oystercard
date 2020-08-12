require "journey"

describe Journey do
  it "checks if journey has started" do
  expect(subject.journey_start).to eq true
  end

  it "checks if journey has ended" do
  expect(subject.journey_end).to eq true
  end

  it "calculates the fare of the journey" do
  expect(subject.calculate_fare).to eq 3
  end
end
