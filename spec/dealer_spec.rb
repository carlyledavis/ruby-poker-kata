require 'rspec'
require '../lib/poker/hand'
require '../lib/poker/dealer'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :should
  end
end

describe 'evaluate cards with garbage hand' do

  it 'should return the hand with the highest card when hands are garbage' do
    hand1 = Hand.new( '2D', '3H','8S', 'JS', '5C')
    hand2 = Hand.new( '2D', '3H','8S', '10S', '5C')


    dealer = Dealer.new
    (dealer.evaluate( hand1, hand2 ) == hand1).should == true
  end
end