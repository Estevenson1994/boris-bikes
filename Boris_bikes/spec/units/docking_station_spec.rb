require 'docking_station'

describe DockingStation do

   it { is_expected.to respond_to :release_bike }


   it 'gets a bike' do
    docking_station = DockingStation.new
    docking_station.dock(Bike.new)
    bike = docking_station.release_bike
    expect(bike).to be_a Bike
    end

    it 'expect bike to work' do
      docking_station = DockingStation.new
      docking_station.dock(Bike.new)
      expect(docking_station.release_bike.working?).to eq(true)
    end

    it 'dock a bike' do
      expect(DockingStation.new).to respond_to(:dock).with(1).argument
    end

    it { is_expected.to respond_to :bike }

    it 'docks something' do
      bike = Bike.new
      docking_station = DockingStation.new
      expect(docking_station.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      docking_station = DockingStation.new
      docking_station.dock(bike)
      expect(docking_station.bike).to eq bike
    end
  
    it 'raise error if there are no bikes' do
      docking_station = DockingStation.new
      expect { docking_station.release_bike }.to raise_error("No bikes available")
    end

    it 'raise docking station full error' do
      docking_station = DockingStation.new
      docking_station.dock(Bike.new)
      expect { docking_station.dock(Bike.new) }.to raise_error('Docking station is full')
    end
end
