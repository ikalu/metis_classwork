class NameLottery
  attr_accessor :names

  def initialize(names)
    @names = names
  end

  def list
    while true
      print "> "
      name = gets.chomp
      break if name.empty?

      names << name
    end
  end

  def play
    list
    shuffled = names.shuffle
    select = rand(0..(shuffled.size - 1))

    winner
    puts shuffled[select]
  end

  def winner
    puts "The winner ... "
    print "> "
  end
end

lotto = []
lottery = NameLottery.new(lotto)
lottery.play
