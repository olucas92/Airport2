require_relative 'weather.rb'

class Airport

  include Weather

  DEFAULT_CAPACITY = 20

  attr_reader :planes

  def initialize
    @planes ||= []
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
    raise "It's too stormy to take off!" if stormy?
    @planes.delete(plane)
  end

  def full?
    plane_count == capacity
  end

  def empty?
    plane_count == 0
  end

  def clear_for_landing
    raise "Sorry, the airport is full!" if full?
    raise "It's too stormy to land!" if stormy?
  end

  def capacity
    @capacity = DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end




end