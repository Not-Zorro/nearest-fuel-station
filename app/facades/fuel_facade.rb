class FuelFacade
  def initialize(location)
    @location = location
    @nrel_service = NrelService.new(location)
  end

  def station
    @station ||= Station.new(@nrel_service.retrive_station)
  end

  def directions
    @directions ||= Direction.new(@nrel_service.retrive_station)
  end
end
