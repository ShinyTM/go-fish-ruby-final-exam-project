require_relative 'Game.rb'
require_relative 'Console_LayoutMessages.rb'
require_relative 'Console_GamePlayLogics.rb'

class GamePlay
  include LayoutMessages
  include GamePlayLogics
  attr_accessor :real_player_name, :initial_choice, :game
  def start
    system ("cls")
	
    show_welcome_header
   
	if(@initial_choice == 'Y') 
	  initialize_game
	  begin
        #show_current_state_of_the_table
	    #@game.second_player.pick_card_from_lake(@game.lake_as_source)
		#@game.first_player.pick_card_from_lake(@game.lake_as_source)
		#sleep 3
		#system ("cls")
	  end while (@game.lake_as_source.size_of_source != 0 && @game.first_player.hand_size != 0 && @game.second_player.hand_size != 0)
	else
	  show_server_message("It was a nice meaningful conversation!!! BYE-BYE")
	  sleep 3
	  exit
	end   
  end
end
