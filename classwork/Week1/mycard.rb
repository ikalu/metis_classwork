class MyCard

  attr_accessor :front, :back

  def initialize (game)
    @front = game[:front]
    @back = game[:back]
  end

  def play
    guess = make_guess
    if correct?(guess)
      puts "Correct!"
    else
      puts "Incorrect!"
    end
  end

  def make_guess
    print "#{front}: "
    gets.chomp
  end

  def correct?(guess)
    guess.downcase == back.downcase
  end
end

class Deck
  attr_accessor :cards, :name

  def initialize(name, cards)
    @name = name
    @cards = cards
  end

  def play
    welcome
    cards.shuffle.each do |card|
      card.play
    end
  end

  def welcome
    message = "Welcome! You are in #{name} class"
    puts message
    puts "-" * message.size
  end
end


class CardGame
  attr_accessor :decks

  def initialize(decks)
    @decks = decks
  end

  def choose_deck
    print "Please choose deck to play: "
    choice = gets.chomp

    decks.find do |deck|
      deck.name.downcase == choice.downcase
    end
  end

  def play
    loop do
      mydeck = choose_deck
      if mydeck == nil
        puts "Error!! Restart"
        break
      else
        puts "Game loading ..."
        mydeck.play
      end
    end

  end

end

class Decks

end

#jpcards = []
#jpcards << MyCard.new({front: "anh", back: "Man"})
#ibcards = []
#ibcards << MyCard.new({front: "Nne", back: "Woman"})
#my_decks = [Deck.new("Japanese Deck", jpcards), Deck.new("Igbo Deck", ibcards)]
#cardgame = CardGame.new(my_decks)
#cardgame.play




