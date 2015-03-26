class Client < ActiveRecord::Base
  has_many :reservations
  has_many :tables, :through => :reservations
  has_many :restaurants, :through => :tables

end
