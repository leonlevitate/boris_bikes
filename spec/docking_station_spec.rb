require 'docking_station'
  describe DockingStation do
  #    it responds to release_bike do
  #     expect(subject).to respond_to :release_bike
  #    end
  it { is_expected.to respond_to :release_bike }
=begin
  it 'releases working bikes' do
      bike = subject.release_bike
      expect(bike).to be_working
  end
=end
    describe '#release_bike' do
      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike). to eq bike
        end
      end
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike)}

  it 'returns docked bikes' do
   bike = Bike.new
   subject.dock(bike)
   #to return the we bike we dock
   expect(subject.bike).to eq bike
  end
end
