require 'rspec'
require '../lib/poker/hand'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :should
  end
end

describe 'Hand' do

  it 'identify a hand as garbage if it has no value' do
    hand = Hand.new( '1H', '2D', '8C', '9H', '7S')
    hand.garbage?.should == true
  end
end