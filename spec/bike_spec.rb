require 'bike'

describe Bike do
  it 'bike is good' do
    expect(subject).to respond_to :bike_working
  end
end
