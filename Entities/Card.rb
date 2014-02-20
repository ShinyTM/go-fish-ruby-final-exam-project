class Card
  attr_reader :rank, :color
  
  def initialize rank, color
    @rank = rank
	@color = color
  end
  
  #Overloading the '==' comparison between two cards
  def ==(another_card)
    (@rank == another_card.rank and @color == another_card.color)
  end
  
  def to_s
    "#{rank}_#{color}"
  end
end