require 'airport'
require 'plane'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }

  context "taking off and landing" do

    it "planes should be able to land" do
      plane.land!
      airport.dock(plane)
      expect(airport.plane_count).to eq(1)
    end


  end




  




end