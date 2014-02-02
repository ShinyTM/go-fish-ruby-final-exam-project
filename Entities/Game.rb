require_realtive 'Player.rb'
require_realtive 'Card.rb'
require_realtive 'LakeAsSource.rb'
require_realtive 'CardsDeck.rb'

class Game
  
  def initialize fplayer, splayer, source
	@first_player = fplayer
	@second_player = splayer
	@lake_as_source = source
	@runs_counter = 0
  end
  
  #������� �������� ���� �� file_name !!!������ �� file_name �� � � ���������� '/' forward slash
  def load_game file_name
    self = Marshal::load(File.open(file_name, 'r'))
  end
  
  #������� ���� � ���o������ ����� !!!������ �� path_for_saving ������������ �� � � �������� '/' forward slash
  def save_game path_for_saving
    data = Marshal::dump(self, File.open(path_for_saving + '/saved_game' + (@runs_counter++).to_s, 'w'))
  end
  
  #������� ����� �� �������� � ���������� �� ����� � '�������'
  def deal_cards
    full_deck = CardsDeck.new.full_deck
    1.upto(7){ |i|
	  @first_player.push_card_to_hand(full_deck.delete(full_deck.sample))
	  @second_player.push_card_to_hand(full_deck.delete(full_deck.sample))
	}
	@source = full_deck
  end
end