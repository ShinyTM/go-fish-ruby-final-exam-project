require_realtive 'Player.rb'
require_realtive 'Card.rb'
require_realtive 'LakeAsSource.rb'
require_realtive 'CardsDeck.rb'

class Game
  
  def initialize fplayer, splayer, source
	@first_player = fplayer
	@second_player = splayer
	@lake_as_source = source
  end
  
  #������� �������� ����
  def load_game file_name

  end
  
  #������� ����� �� �������� � ���������� �� ����� � '�������'
  def deal_cards
    
  end
end