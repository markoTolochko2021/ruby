require_relative 'game'
require_relative 'resultPrinter'
require_relative 'word_reader'

printer = ResultPrinter.new

reader = WordReader.new

word = reader.read_from_file('./data/words.txt')

game = Game.new(word)

while game.status == 0 do

  printer.print_status(game)

  game.ask_next_letter
end

printer.print_status(game)