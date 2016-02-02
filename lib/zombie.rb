class Zombie < ActiveRecord::Base
  validates :name, presence: true
  has_many :items
  has_many :weapons, through: :items
  belongs_to :status
  after_initialize :load_weapons, :set_status

  attr_accessor :graveyard

  def hungry?
    self.hungry
  end

  def hungry!
    self.hungry = true
  end

  def vegan?
    self.vegan
  end

  def swing(weapon)

  end

  def load_weapons
    self.weapons << Weapon.find(1,2)
  end

  def set_status
    self.status = Status.new(text:'dead')
  end

  def craving_brains?
    self.hungry
  end

  def eat(food)
    self.hungry = !(food == :brains)
  end

  def pulse
    false
  end

  def decapitate
    weapons.take.slice(self, :head)
    self.status.text = 'dead again'
  end

  def geolocate
    loc = Zoogle.graveyard_locator(self.graveyard)
    "#{loc[:latitude]}, #{loc[:longitude]}"
  end
end

