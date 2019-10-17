

class Game 

	attr_accessor :current_player, :board, :player 

	def initialize

		puts "       *******************************"
		puts "       *  BIENVENUE DANS LE MORPION  * " 	
		puts "       * La plus grande MST du monde * "	
		puts "       *******************************"


 		puts "Rule of the game "
 		puts" Aligne trois fois ton symbole et c'est gagne !! " 
 		puts "Si tu joue sur une case deja occupe, tu perds ton tour"
 		puts "Le joueur X commencera a jouer"
		 puts 
 		puts "Player 1 ton symbole sera le X, choisis ton nom:"
 		print ">" 
 		name_1 = gets.chomp 
		@player1 = Player.new(name_1, "X")
 		puts 
 		puts "Player 2 ton symbole sera le O, choisis ton nom:"
 		print '>' 
 		name_2 = gets.chomp
 		@player2 = Player.new(name_2, "O")
		
 		@current_player = @player1

		@board = Board.new

	end 


	def time_to_play 

		while @board.victory? == false 
			self.turn
		end
	end 


	def swicth_players 

		if @current_player == @player1
			@current_player = @player2

		else @current_player = @player1

		end
	end 





	def turn 


		9.times do 

			puts "*******************"
			puts "Voici la situation"
			@board.to_s
			puts "******************"
			puts ""

			puts "C'est le tour de #{@current_player.name} avec le #{@current_player.form}"
				@board.play_turn(@current_player.form)

			


			if @board.victory? == true 


			puts "*******************"
			puts "Voici la situation"
			@board.to_s
			puts "******************"
			puts ""
			puts "*****************************"
			puts
			puts "GREAT WIN"
			puts " #{current_player.name} is our champion"
			new_round


			break 


			end 

		
			swicth_players


		end


		



	end

	
	def new_round 
		 puts "Une petit revanche ? tapez 1. Tu as trop peur ? tapez 2"
		 print ">" 
		 choice = gets.chomp().to_i

		 if choice == 1 
		 	puts "Allez c'est parti !"
		 	@board = Board.new
		 
		 elsif choice == 2 
		 	 puts "Allez a plus les LOOSERS !"


		 else puts "Entre 1 et 2 on t'a dis !"
		 		new_round 
		end
	end
		
	




end 
