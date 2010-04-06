class Wine < ActiveRecord::Base
  attr_accessible :batch_number, :name, :started
  validates_presence_of :name
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
