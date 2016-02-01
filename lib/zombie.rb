class Zombie < ActiveRecord::Base
  validates :name, presence: true
  has_many :items
  has_many :weapons, through: :items
  after_initialize :load_weapons

  def hungry?
    self.hungry
  end

  def vegan?
    self.vegan
  end

  def swing(weapon)

  end

  def load_weapons
    self.weapons << Weapon.find(1,2)
  end

  def craving_brains?
    self.hungry
  end

  def eat(food)
    self.hungry = !(food == :brains)
  end
end