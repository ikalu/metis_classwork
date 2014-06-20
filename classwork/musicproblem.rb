require 'csv'
class Music
  attr_accessor :database

  def initialize
    @database = {} #creates an empty hash and assigns it to database
  end

  def make_selection
    music_library
    print "List of "
    puts database.keys
    puts

    puts "Query: please choose an artist!"
    query = gets.chomp
    if database.include?(query)
      puts database.fetch(query)
    else
      puts "Query does not exist"
    end
    puts

    repeat?
  end

  def repeat?
    puts "Do you want to play again? yes/no"
    answer = gets.chomp
    if answer == "yes"
      puts 
      make_selection
    end
  end
  
  private  
  def music_library
      CSV.foreach('music.csv') do |row|
        artist_name = row[3]
        song_name = row[0]

        if database.has_key?(artist_name)
          database[artist_name] << song_name
        else
          database[artist_name] = [song_name]
        end
      end
  end
end

music_col = Music.new
music_col.make_selection
