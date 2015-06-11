require 'plane'
require 'airport'

describe Plane do

  it "should have a flying status after being created" do
    plane = Plane.new
    plane.fly!
    expect(plane).to be_flying
  end

end



