class TTTCLI

def call
  puts "Welcome to Tic Tac Toe,"
  puts "Please choose 1. Player vs Player 2. Player vs Computer or 3. Computer vs Computer"
  # puts 'Please enter game.new(player, player, board), game.new(player, computer, board) or game.new(computer, computer, board)
  answer = gets.strip

  if answer == '1'
    game = Game.new()
    game.board.display
  elsif answer == '2'
    game = Game.new(Players::Human.new("X"), Players::Computer.new("O"), Board.new)
    game
  else
    game = Game.new(Players::Computer.new("X"), Players::Computer.new("O"), Board.new)
    game
  end
  game.play
end

end
