require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  it "check bike working?" do
    expect(Bike.new.working?).to eq true
  end
  it "bike docked" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it " #bike to return bike" do
    bike = Bike.new
    subject.dock(bike)
  expect(subject.bike).to eq bike
end

end
