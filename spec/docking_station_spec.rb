require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'release a good bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it "dock won't relase a bike when none exists" do
    station = DockingStation.new
    #station.bike = nil
    expect{ station.release_bike }.to raise_error "Docking Station empty"

  end

end
