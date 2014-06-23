#This program takes a series of names and ages. Then prints out the oldest and youngest person's name.

class AgeTest # creates a class
  attr_reader :people # making the instance variable accessible

  def initialize # This method initializes the instance variable 
    @people = {}
  end

  def name_and_age # Method for taking names
    puts "Enter people's names and ages followed by an empty line: "
    while true # Begins a loop
      print "> " 
    data = gets.chomp # Gets input from user 
    @info = data.split
      if data.empty? # If user doesn't enter anything
        break # Break out of the if-loop
      else
        people[@info[0]] = @info[1]
      end
    end
    people
  end

  def pick
    name_and_age # Calls name - method
    @young = people.values.sort.first # Sorts the Hash and assigns the first value to a variable
    @old = people.values.sort.last # Sorts the Hash and assigns the last value to a variable
    print_result # Calls print_result - method
  end

  def print_result # Defines the print_result and returns a data
    puts
    puts people.key(@old) + " is the oldest."
    puts people.key(@young) + " is the youngest."
  end
end

age_test = AgeTest.new # Creates an object of the above class
age_test.pick # Calls method pick with the object created
