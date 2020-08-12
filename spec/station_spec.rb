require 'station'

describe Station do
  it "expects to know what zone a station is in" do
  expect(subject.zone).to eq(1)
  end

it "expects station to memorize name" do
  expect(subject.station_name).to eq("station_name")
  end
end
