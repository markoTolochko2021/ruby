class Game

  def initialize(word)
    @letters = get_letters(word)

    @errors = 0

    @right_letters = []
    @wrong_letters = []

    @status = 0
  end

  attr_accessor :right_letters, :wrong_letters, :letters, :errors, :status

  def get_letters(word)
    if (word == nil || word == "")
      abort "You didn't write any word!!!"
    end
    return word.split("")
  end

  def ask_next_letter
    puts "\n Enter next letter"

    letter = ""

    while letter == "" do
      letter = STDIN.gets.chomp
    end

    next_step letter
  end

  def next_step(letter)
  
    if @status == -1 || @status == 1
      return 
    end
    
    if @right_letters.include?(letter) || @wrong_letters.include?(letter)
      return
    end

    if @letters.include?(letter)

      @right_letters << letter

      if @right_letters.size == @letters.uniq.size
        @status = 1
      end

    else
      @wrong_letters << letter

      @errors +=1

      if @errors >= 7
        @status = -1
      end
    end
  end 
end
