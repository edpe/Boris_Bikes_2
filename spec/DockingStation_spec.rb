require "DockingStation"

describe DockingStation do


  it {is_expected.to respond_to(:release_bike)}

  it "gets bike and expects it to be working" do
    expect(subject.dock(Bike.new).sample).to be_working
  end

  it "checks that dock is working" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "check if dock is empty" do
    expect(subject.bikes.empty?).to eq true
  end

  it "does the bike dock successfully" do
    test_bike = Bike.new
    expect(subject.dock(test_bike).sample).to eq test_bike
  end

  it "returns a stored bike" do
    test_bike = Bike.new
    subject.dock(test_bike)
    expect(subject.bike.sample).to eq test_bike
  end

  it "raises an error if no bikes are available" do
    expect {subject.release_bike}.to raise_error "no bikes available"
  end

  it "raises an error if the docking station is full" do
    DockingStation::DEFAULT_CAPACITY.times do
    subject.dock Bike.new
  end
    expect {subject.dock(Bike.new)}.to raise_error "Docking Station full"
  end

  # describe "initialization" do
  #   it "Has variable capacity" do
  #     docking_station = DockingStation.new(50)
  #     50.times { docking_station.dock Bike.new }
  #     expect{ docking_station.dock Bike.new }.to raise_error "Docking Station full"
  #   end
  # end

  describe "initialization" do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it "default capacity" do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect { subject.dock(bike) }.to raise_error "Docking Station full"
    end
  end

end
