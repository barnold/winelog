class Wine < ActiveRecord::Base
  attr_accessible :batch_number, :name, :started
  validates_presence_of :name
end
