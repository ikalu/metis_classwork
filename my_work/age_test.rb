class AgeTest
  attr_reader :people

  def initialize
    @people = {}
  end

  def name
    while true
      print "> "
    @info = gets.chomp
      if @info.empty?
        break
      else
        age
      end
    people
    end
  end

  def age
    age = gets.chomp
    ages = age.to_i
    people[@info] = ages
  end

  def pick
    name
    @young = people.values.sort.first
    @old = people.values.sort.last
    print_result
  end

  def print_result
    puts
    puts people.key(@old) + " is the oldest."
    puts people.key(@young) + " is the youngest."
  end
end

age_test = AgeTest.new
age_test.pick
