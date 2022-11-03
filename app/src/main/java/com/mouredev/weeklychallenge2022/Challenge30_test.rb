# frozen_string_literal: true

gem 'minitest', '~>5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './Challenge30'

# class for testing
class FrameTest < Minitest::Test
  def test_sample_string
    input = 'first word'
    expected = "*********\n* first *\n* word  *\n*********"
    assert_equal expected, Frame.new.word_frame(input)
  end

  def test_long_word
    input = 'heregoessomewordwithoutspaces'
    expected = "*********************************\n* heregoessomewordwithoutspaces *\n*********************************"
    assert_equal expected, Frame.new.word_frame(input)
  end

  def test_short_word
    input = 'meek'
    expected = "********\n* meek *\n********"
    assert_equal expected, Frame.new.word_frame(input)
  end

  def test_empty_string
    input = ''
    expected = ''
    assert_equal expected, Frame.new.word_frame(input)
  end

  def test_long_space_string
    input = '                             '
    expected = ''
    assert_equal expected, Frame.new.word_frame(input)
  end

  def test_long_string_with_long_word
    input = 'there goes somestringwithoutspaces and some free words too'
    expected = "***************************\n* there                   *\n* goes                    *\n* somestringwithoutspaces *\n* and                     *\n* some                    *\n* free                    *\n* words                   *\n* too                     *\n***************************"
    assert_equal expected, Frame.new.word_frame(input)
  end

  def test_long_string_with_long_space
    input = 'there goes                   some string with space'
    expected = "**********\n* there  *\n* goes   *\n* some   *\n* string *\n* with   *\n* space  *\n**********"
    assert_equal expected, Frame.new.word_frame(input)
  end
end
