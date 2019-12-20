class Direction
  attr_reader :distance, :travel_time, :directions

  def initialize(data)
    @data = data[:routes][0][:legs][0][:steps][0]
    @distance = @data[:distance][:text]
    @travel_time = @data[:duration][:text]
    @directions =  @data[:html_instructions]
  end
end
