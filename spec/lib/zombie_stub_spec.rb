describe Zombie do
  let(:zombie) { Zombie.create(name:'Ash') }

  context "#decapitate" do
    it "calls weapon.slice" do
      zombie.weapons.take.should_receive(:slice)
      zombie.decapitate
    end

    it "sets status to daed again" do
      zombie.weapons.take.stub(:slice)
      zombie.decapitate
      zombie.status.text.should == 'dead again'
    end
  end

  it "calles Zoogle.graveyard_locator" do
    Zoogle.should_receive(:graveyard_locator).with(zombie.graveyard)
      .and_return({latitude:2, longitude: 3})
    zombie.geolocate
  end

  it 'returns properly formatted lat, long' do
    Zoogle.stub(:graveyard_locator).and_return({latitude:2, longitude:3})
    zombie.geolocate.should == "2, 3"
  end
end
