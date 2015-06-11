class Plane

  def initialize
    fly!
  end

  def fly!
    @flying = true
    @grounded = false
  end

  def flying?
    @flying
  end

  def grounded?
    @grounded
  end

  def land!
    @flying = false
    @grounded = true
  end

end