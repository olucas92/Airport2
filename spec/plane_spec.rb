require 'plane'
require 'airport'

describe Plane do

  let(:plane) { Plane.new }

  it "should have a flying status after being created" do
    plane.fly!
    expect(plane).to be_flying
  end

  it "should be able to land" do
    plane.fly!
    plane.land!
    expect(plane).to be_grounded
  end

end



