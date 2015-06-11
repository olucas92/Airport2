require 'plane'
require 'airport'

describe Plane do

  let(:plane) { Plane.new }

  it "should have a flying status after being created" do
    plane.fly!
    expect(plane).to be_flying
  end

end



