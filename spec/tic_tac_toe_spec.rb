require_relative '../lib/game_logic.rb'
require_relative '../lib/players.rb'
describe 'Tictactoe' do
  game = GameLogic.new
  game1 = GameLogic.new
  player1 = Players.new('Elias', 'X')
  player2 = Players.new('Umair', 'O')
  describe 'validate move' do
    it 'Validates if the place exists and if it is not taken already' do
      expect(game.validate_move('a')).to eql(0)
    end
    it 'Validates if the place exists and if it is not taken already' do
      expect(game.validate_move('b')).to eql(1)
    end
  end
  describe 'update_board' do
    it 'Assigns the X to board position a' do
      expect(game.update_board(0, 'X')).to eql(true)
    end
    it 'Assigns the X to board position b' do
      expect(game.update_board(1, 'X')).to eql(true)
    end
    it 'Assigns the X to board position c' do
      expect(game.update_board(2, 'X')).to eql(true)
    end
  end
  describe 'winning?' do
    it 'Game wining condition is true' do
      expect(game.winning?).to eql(true)
    end
  end
  describe 'winner' do
    it 'Elias is winner' do
      expect(game.winner(player1, player2)).to eql('Elias')
    end
  end
  game.array = %w[a b c d e f g h i]
  describe 'update_board' do
    game.array = %w[a b c d e f g h i]
    it 'Assigns the O to board position a' do
      expect(game1.update_board(3, 'O')).to eql(true)
    end
    it 'Assigns the 0 to board position b' do
      expect(game1.update_board(4, 'X')).to eql(true)
    end
    it 'Assigns the 0 to board position c' do
      expect(game1.update_board(5, 'O')).to eql(true)
    end
  end
  describe 'winning?' do
    it 'Game wining condition is false' do
      expect(game1.winning?).to eql(false)
    end
  end
  describe 'winner' do
    it 'Umair is winner' do
      expect(game.winner(player1, player2)).to eql('Elias')
    end
  end
end
