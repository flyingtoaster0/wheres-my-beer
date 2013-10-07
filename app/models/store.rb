class Store < ActiveRecord::Base
  attr_accessible :id, :name, :address


  # TODO make a method that determines if a store is currently open
end