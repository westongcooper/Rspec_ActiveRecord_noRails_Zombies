describe Zombie do
  it 'should not have a pulse' do
    zombie = Zombie.new
    zombie.pulse.should == false
  end
end

##### usually in a seperate spec file.   With a duplicate test.

describe Vampire do
  it 'should not have a pulse' do
    vampire = Vampire.new
    vampire.pulse.should == false
  end
end

####################################################
###### usually in spec/support/shared_examples_the_undead.rb but must be declared before.

shared_examples_for "the undead" do
  it 'does not have a pulse' do
    subject.pulse.should == false
  end
end

shared_examples_for "the undead pt2" do
  it 'does not have a pulse' do
    undead.pulse.should == false
  end
end
shared_examples_for "the undead pt3" do |undead|
  it 'does not have a pulse' do
    undead.pulse.should == false
  end
end


###############################################
#############

describe Zombie do
  it_behaves_like 'the undead'
  it_behaves_like 'the undead pt2' do
    let(:undead){ Zombie.new }
  end
  it_behaves_like 'the undead pt3', Zombie.new
end

#### again seperate spec files
describe Vampire do
  it_behaves_like 'the undead'
  it_behaves_like 'the undead pt2' do
    let(:undead) { Vampire.new }
  end
  it_behaves_like 'the undead pt3', Vampire.new
end


