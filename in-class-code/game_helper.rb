class GameHelper 

  def initialize(fname='../data/SINGLE.TXT')
    read_data(fname)
  end

  # return all the words of size == l
  def words_of_length(l)
    subset = @lines.select{ |term| term.size == l }
    return subset
  end

  # return all words that contain any of the characters
  # in the letters parameter (which is an array)
  def words_with(*letters)
    @lines.select{ |term| 
      letters.any?{ |letter|
        term.match(/#{letter}/) 
      }
    }
  end

private

  def read_data(fname)
    f = File.open(fname,'r')
    @lines = f.readlines
    @lines.map!{ |line| line.strip }
    puts ""
  end

end


gh = GameHelper.new
# puts gh.words_of_length(5)
puts gh.words_with('e','a','t')
