class Dice

  def roll
    rand(1..6)
  end

  def number_of_dice(number)
    number.times { puts roll }
  end

end
