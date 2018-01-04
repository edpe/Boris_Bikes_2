require "DockingStation"

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it "gets bike and expects it to be working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "checks that dock is working" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

end
