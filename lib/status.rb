class Status < ActiveRecord::Base
  # belongs_to :vampire
  has_one :zombie
end