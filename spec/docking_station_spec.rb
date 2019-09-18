require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike).with(0).argument }
  it 'release good bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it {is_expected.to respond_to(:return_bike).with(1).argument}


end
