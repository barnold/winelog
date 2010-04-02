require 'test_helper'

class WineTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Wine.new.valid?
  end
end
