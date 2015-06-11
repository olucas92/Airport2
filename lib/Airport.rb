class Airport

  attr_reader :planes

  def initialize
    @planes = []
  end

  def dock(plane)
    plane.land!
    @planes << plane
  end

  def plane_count
    @planes.count
  end




end