class FlashCard
  attr_accessor :front, :back


  def initialize (attributes)
    @front = attributes[:front]
    @back = attributes[:back]
  end

  def display_card
    puts "#{front}: "
  end
end

flashcard_game = FlashCard.new({front: "gato", back: "cat"})
flashcard_game.display_card
