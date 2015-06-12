class Airport

  DEFAULT_CAPACITY = 20

  attr_reader :planes

  def initialize
    @planes = []
  end

  def airport
    @airport
  end

  def dock(plane)
    clear_for_landing
    plane.land!
    @planes << plane
  end

  def plane_count
    @planes.count
  end

  def release(plane)
    @planes.delete(plane)
  end

  def full?
    plane_count == capacity
  end

  def clear_for_landing
    raise "Sorry, the airport is full" if full?
  end

  def capacity
    @capacity = DEFAULT_CAPACITY
  end




end