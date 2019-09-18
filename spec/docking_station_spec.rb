require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike).with(0).argument }
  
  it 'release good bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it do
    station = DockingStation.new
    bike = station.release_bike
    station.dock(bike)
    expect(station.bike).to eq bike
  end
end


  # it 'release good bike' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  # it do
  #   expect(subject.dock(Bike.new)).to respond_to(:bike)
  # end
