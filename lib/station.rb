class Station

  attr_accessor :zone, :station_name

  def initialize(zone=1, name = "station_name")
    @zone = zone
    @station_name = name
  end
end
