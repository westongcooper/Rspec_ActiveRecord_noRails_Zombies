class Weapon < ActiveRecord::Base
  validates :name, presence: true
  has_many :zombies, through: :items

  def slice(*args)
    return nil
  end
end