describe "Zombie" do
  let(:zombie) { Zombie.new(hungry: false) }

  it 'is hungry' do
    zombie.hungry!
    zombie.should be_hungry
  end

  it 'should crave brains' do
    zombie.hungry!
    zombie.should be_craving_brains
  end
end


#################

describe "Zombie" do
  count = 0
  let(:zombie) { Zombie.new(hungry: false) }
  # before(:each) { zombie.hungry! } ### before(:each) is default and does not need an argument
  before { zombie.hungry!; count += 1 }

  it 'is hungry each time; Zombie count should be ONE' do
    zombie.should be_hungry
    count.should eq(1)
  end

  it 'should crave brains each time; Zombie count should be TWO because before(:each) is used' do
    zombie.should be_craving_brains
    count.should eq(2)
  end
end

#################

describe Zombie do
  count = 0
  let(:zombie) { Zombie.new(hungry: false) }
  subject { zombie }
  before(:all) { count += 1 }

  it 'zombie should not be hungry; count should be ONE when before(:all) is used' do
    zombie.should_not be_hungry
    count.should eq(1)
  end

  it 'zombie should not be hungry; count should still be ONE because(:all) was used' do
    zombie.should_not be_craving_brains
    count.should eq(1)
  end
end

#################

describe "Zombie" do
  count = 0
  nested_count = 0
  let(:zombie) { Zombie.new(hungry: false) }
  before { zombie.hungry!; count += 1 }

  it 'is hungry each time; Zombie count should be ONE' do
    zombie.should be_hungry
    count.should eq(1)
    nested_count.should eq(0)
  end

  it 'should crave brains each time; Zombie count should be TWO because before(:each) is used' do
    zombie.should be_craving_brains
    count.should eq(2)
    nested_count.should eq(0)
  end

  context 'nested before action' do
    before { nested_count += 1 }

    it 'should be 1' do
      nested_count.should eq(1)
      count.should eq(3)
    end

    it 'should be 2' do
      nested_count.should eq(2)
      count.should eq(4)
    end
  end

end

#################


