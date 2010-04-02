class Wine < ActiveRecord::Base
  attr_accessible :batch_number, :name, :started
end
