class ResultPrinter
  def print_status(game)
    cls
    puts "\n Word: " + get_word_for_print(game.letters, game.right_letters)

    puts "\n Mistakes (#{game.errors}): #{game.wrong_letters.join(", ")}"

    if game.errors >= 7
      puts "You lose!!"
    else
      if game.letters.uniq.size == game.right_letters.size
        puts "You win!!\n\n"
      else
        puts "You have attempts" + (7-game.errors).to_s
      end
    end
  end

  def get_word_for_print(letters, right_letters)
    result = ""

    for letter in letters do
      if right_letters.include? letter
        result += letter + " "
      else
        result += "_ "
      end
    end
    return  result
  end

  def cls
    system "cls"
  end

end
