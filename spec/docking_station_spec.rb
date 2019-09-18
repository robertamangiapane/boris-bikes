require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike).with(0).argument }
  it 'release good bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it {is_expected.to respond_to(:dock).with(1).argument}
  it do
    expect(subject.dock(Bike.new)).to respond(:bike)
  end
end


=begin
  it 'release good bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

=begin
  it do
    expect(subject.dock(Bike.new)).to respond_to(:bike)
  end
  =end
