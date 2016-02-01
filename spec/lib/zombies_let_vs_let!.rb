### lets clearify let and let!
describe "let" do
  zombies = 0
  let(:count) { zombies += 1 }
  it "is lazy and waits to be invoked to call the method" do
    expect(zombies).to eq(0)
    expect(count).to eq(1)
    expect(zombies).to eq(1)
  end

  it "does not get called if it is not invoked" do
  end

  it "is not cached across examples" do
    expect(zombies).to eq(1)
    expect(count).to eq(2)
    expect(count).to eq(2)
    expect(zombies).to eq(2)
  end
end

describe "let!" do
  zombies = 0
  let!(:count) { zombies += 1 }
  it "will call it at the beginning of each test regardless if it is invoked" do
    expect(zombies).to eq(1)
    expect(count).to eq(1)
    expect(zombies).to eq(1)
  end

  it "will call it even if it's not invoked" do
  end

  it "is called for each example" do
    expect(zombies).to eq(3)
    expect(count).to eq(3)
    expect(count).to eq(3)
    expect(zombies).to eq(3)
  end
end
