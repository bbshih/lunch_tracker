class Lunch < ActiveRecord::Base
  attr_accessible :cost, :drink, :food

  validates :food, :presence => true
end
