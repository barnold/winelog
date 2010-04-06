class Ingredient < ActiveRecord::Base
  attr_accessible :references, :name, :amount, :amount_unit
  belongs_to :wine
end
