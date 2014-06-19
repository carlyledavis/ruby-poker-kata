class Hand
  attr_reader :cards

  def initialize( card1, card2, card3, card4, card5 )
    @cards = [card1, card2, card3, card4, card5]
  end

  def garbage?
    true
  end
end