class MyCard

  attr_accessor :front, :back

  def initialize (game)
    @front = game[:front]
    @back = game[:back]
  end

  def display
    print "#{front}: "
    puts "#{back}"
  end
end

my_card = MyCard.new({front: "wombat", back: "bat"} )
my_card.display
