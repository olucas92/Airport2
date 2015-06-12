class Airport

  attr_reader :planes

  def initialize
    @planes = []
  end

  def airport
    @airport
  end

  def dock(plane)
    plane.land!
    @planes << plane
  end

  def plane_count
    @planes.count
  end

  def release(plane)
    @planes.delete(plane)
  end




end