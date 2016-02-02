class Vampire < ActiveRecord::Base
  has_one :status
  def pulse
    false
  end
end