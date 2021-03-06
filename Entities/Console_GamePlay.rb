require_relative 'Game.rb'
require_relative 'Console_LayoutMessages.rb'
require_relative 'Console_GamePlayLogics.rb'

class GamePlay
  include LayoutMessages
  include GamePlayLogics
  attr_accessor :real_player_name, :initial_choice, :game, :turn
  def start
    system ("cls")
	@turn = :first_player	
    show_welcome_header
	if(@initial_choice == 'Y') 
	  initialize_game
	  begin
	    system ("cls")
        show_current_state_of_the_table
		if(@turn == :first_player)
		 activate_first_player
        else
		 activate_second_player
		end
	  end while (@game.lake_as_source.size_of_source != 0 && @game.first_player.hand_size != 0 && @game.second_player.hand_size != 0)
	  
	  "YOU ARE THE WINNER" if (@game.first_player.cleared_cards > @game.second_player.cleared_cards) 
	  "YOU LOST" if (@game.first_player.cleared_cards < @game.second_player.cleared_cards) 
	  "EVERYBODY IS WINNING" if (@game.first_player.cleared_cards == @game.second_player.cleared_cards) 
	else
	  show_server_message("It was a nice meaningful conversation!!! BYE-BYE")
	  sleep 3
	  exit
	end   
  end
end

