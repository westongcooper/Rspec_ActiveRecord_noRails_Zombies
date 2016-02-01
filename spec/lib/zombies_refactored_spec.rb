
describe Zombie do
  it 'has no name' do
    @zombie = Zombie.new
    @zombie.name.should be_nil
  end

  it 'craves brains' do
    @zombie = Zombie.new
    @zombie.should be_craving_brains
  end

  it 'should not be hungry after eating brains' do
    @zombie = Zombie.new
    @zombie.hungry.should be_truthy
    @zombie.eat(:brains)
    @zombie.hungry.should be_falsy
  end
end

###############################

describe Zombie do
  let(:zombie) { Zombie.new }
  subject{ zombie }

  it 'has no name' do
    zombie.name.should be_nil
  end

  it 'craves brains' do
    zombie.should be_craving_brains
  end

  it 'should not be hungry after eating brains' do
    zombie.hungry.should be_truthy
    zombie.eat(:brains)
    zombie.hungry.should be_falsy
  end
end

############################

describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }

  its(:name) { should be_nil }
  it { should be_craving_brains}

  it 'should not be hungry after eating brains' do
    zombie.hungry.should be_truthy
    zombie.eat(:brains)
    zombie.hungry.should be_falsy
  end
end

#############################

describe Zombie do
  let(:zombie) { Zombie.new }
  subject { zombie }

  its(:name) { should be_nil }
  it { should be_craving_brains}

  it 'should not be hungry after eating brains' do
    expect { zombie.eat(:brains) }.to change {
      zombie.hungry
    }.from(true).to(false)
  end
end


