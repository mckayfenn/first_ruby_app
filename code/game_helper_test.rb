require './game_helper'
require 'minitest/autorun'

class GameHelperTest < Minitest::Test
  
  def setup
    @gh = GameHelper.new
  end

  def test_that_file_is_loaded
    assert_operator @gh.all_words.word_count, :==, 354984
  end

  def test_length_is_respected
    assert_operator @gh.all_words.with_word_length(5).count, :==, 15047
  end

  def test_begins_with
    letters = ['f','g','i']
    selected_terms = @gh.all_words.begins_with(letters)
    # verify every selected_term begins with a member of letters
    selected_terms.each{ |term|
      assert_operator letters, :include?, term[0]
    }
  end

  def test_contains
    letters = ['f','g','i']
    selected_terms = @gh.all_words.contains(letters)
    # verify every selected_term contains at least one member of letters
    selected_terms.each{ |term|
      assert letters.any?{ |l| term.include?(l) }
    }
  end

  def test_does_not_contain
    letters = ['x','y','z']
    selected_terms = @gh.all_words.does_not_contain(letters)
    # verify every selected_term contains none of letters
    selected_terms.each{ |term|
      assert letters.none?{ |l| term.include?(l) }
    }
  end

end


class String
  def palindrome?
    self == self.reverse
  end
end