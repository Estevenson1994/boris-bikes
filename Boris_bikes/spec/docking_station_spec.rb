require 'docking_station'

describe DockingStation do
#   it "release bike" do
     docking_station = DockingStation.new
#   expect(docking_station).to respond_to('release_bike')
# end
it { is_expected.to respond_to :release_bike }
# it {should respond_to 'release_bike'} - another example

bike = docking_station.release_bike

   it 'gets a bike' do
    expect(bike).to be_a Bike
    end

    it 'expect bike to work' do
      expect(bike.working?).to eq(true)
    end

    it 'dock a bike' do
      expect(docking_station).to respond_to(:dock).with(1).argument
    end

    it { is_expected.to respond_to :bike }

    it 'docks something' do
      bike = Bike.new
      expect(docking_station.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.bike).to eq bike
    end
  
    it 'raise error if there are no bikes' do
      expect { docking_station.bike }.to raise_error("No bikes availble")
   end
end
