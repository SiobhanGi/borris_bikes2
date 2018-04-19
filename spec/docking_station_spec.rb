require 'docking_station'

describe DockingStation do
  it "checks if bike is working" do # checks if bike is working....
    expect(Bike.new.working?).to eq true
  end

  # it { is_expected.to respond_to(:dock).with(1).argument} # checks if subject responds to dock method with 1 argument
describe '#dock' do
  it "raises error if #dock capacity is exceeded" do
    bike = Bike.new
    21.times { subject.dock bike }.to raise_error #max cap is 20, raises error if exceeded
  end
end

  it "raises error if #dock capacity is exceeded" do
    expect { subject.dock(bike) }.to raise_error
  end
  # expect(...).to receive(...).exactly(n).times

  it {is_expected.to respond_to(:release_bike)} # checks whether subject responds to release_bike method.

  it "raise error if #release_bike has no bikes" do # error raised if #bikes doesn't equal true
     expect { subject.release_bike }.to raise_error
  end
end
