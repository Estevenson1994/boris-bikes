require 'docking_station'
require 'rspec'

describe DockingStation do
  it 'allows 20 bikes to be docked' do
    expect { 20.times { subject.dock(Bike.new) } }.to_not(raise_error)
  end


end