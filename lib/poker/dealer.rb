class Dealer
  def evaluate( hand1, hand2 )
    best_hand = hand1

    if hand1.garbage? and hand2.garbage?
      best_hand = highest_hand(hand1 ,hand2)
    end

    best_hand
  end

  def highest_hand( hand1, hand2 )
    hand1
  end

end