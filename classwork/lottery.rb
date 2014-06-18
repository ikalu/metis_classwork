class NameLottery
  attr_accessor :names

  def initialize(names)
    @names = names
  end

  def list
    names = []
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
    puts select
  end

  def winner
    puts "The winner ... "
    print "> "
  end

end

names = []
lottery = NameLottery.new(names)
lottery.play