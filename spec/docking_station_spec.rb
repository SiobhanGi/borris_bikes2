require 'docking_station'

describe DockingStation do
  it "checks if bike is working" do # checks if bike is working....
    expect(Bike.new.working?).to eq true
  end

  it "raises error if #dock capacity is exceeded" do
    expect { subject.dock(bike) }.to raise_error
  end

  it "raise error if #release_bike has no bikes" do # error raised if #bikes doesn't equal true
     expect { subject.release_bike }.to raise_error
  end

  describe '#dock' do
    it "raises error if #dock capacity is exceeded" do
      bike = Bike.new
      20.times { subject.dock bike }
      expect { subject.dock bike }.to raise_error #max cap is 20, raises error if exceeded
    end
  end
end
