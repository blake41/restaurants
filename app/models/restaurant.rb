class Restaurant < ActiveRecord::Base
  has_many :tables
  has_many :reservations, :through => :tables
  has_many :clients, :through => :reservations
end
