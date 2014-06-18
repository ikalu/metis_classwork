class NameLottery
  attr_accessor :names

  def participants

  end

  def list
    arr = []
    loop do
      names = gets.chomp
      if names != " "
        arr << names
      else
        break
      end
    break
    end
    print arr
  end
end

namelottery = NameLottery.new
namelottery.list
