require 'docking_station'

describe ".DockingStation" do
  let(:subject) { DockingStation.new(15) }
  it 'checks if capacity is set by the user' do
    expect(subject.MAX_CAPACITY).to eq 15
  end
end

describe DockingStation do
  it "checks if bike is working" do # checks if bike is working....
    expect(Bike.new.working?).to eq true
  end



  it "raise error if #release_bike has no bikes" do # error raised if #bikes doesn't equal true
     expect { subject.release_bike }.to raise_error
  end

  describe '#release_bike' do #  remove number of bikes that exceeds max cap
    it 'raises error if there are no remaining bikes in dock' do
      bike = Bike.new
      subject.MAX_CAPACITY.times {subject.dock bike }
      subject.MAX_CAPACITY.times {subject.release_bike }
      expect { subject.release_bike }.to raise_error, RuntimeError
    end
  end



  describe '#dock' do #  max cap is 20, raises error if exceeded
    it "raises error if #dock capacity is exceeded" do
      bike = Bike.new
      subject.MAX_CAPACITY.times { subject.dock bike }
      expect { subject.dock bike }.to raise_error
    end
  end
end
