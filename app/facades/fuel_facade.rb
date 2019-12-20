class FuelFacade
  def initialize(location)
    @location = location
    @nrel_service = NrelService.new(location)
    @direction_service = DirectionService.new(@location, station.address)
  end

  def station
    @station ||= Station.new(@nrel_service.retrive_station)
  end

  def directions
    @directions ||= Direction.new(@direction_service.retrive_directions)
  end
end
