
class Board

	 

	attr_accessor :board


def initialize 

@board =  [*0..8].map{ |i| BoardCase.new(i).case_number}
end 

def to_s 


    puts "#{@board[0..2].join(" | ")}"
    puts "--|---|--"
    puts "#{@board[3..5].join(" | ")}"
    puts "--|---|--"
    puts "#{@board[6..8].join(" | ")}"
  end


 def play_turn(form) 

 	puts "Choisis la de case ou tu veux jouer :"

	 print ">" 
	 case_number = gets.chomp().to_i
     @board = @board.each_index.map { |e| e == case_number && @board[e] != "X" && @board[e] != "O" ? @board[e] = form : @board[e] }
     
     

	end


def victory?

	if (board[0] == board[1] && board[0]  == board[2] && board[0] != "") || (board[3] == board[4] && board[3] == board[5] && board[3] != "") || (board[6] == board[7] && board[6] == board[8] && board[6] != "") || (board[0] == board[3] && board[0] == board[6] && board[0] != "") || (board[1] == board[4] && board[1] == board[7] && board[1] != "") || (board[2] == board[5] && board[2] == board[8] && board[2] != "") || (board[0] == board[4] && board[0] == board[8] && board[0] != "") || (board[2] == board[4] && board[2] == board[6] && board[2] != "")
	return true 
	else 
	return false
	end
end  





end