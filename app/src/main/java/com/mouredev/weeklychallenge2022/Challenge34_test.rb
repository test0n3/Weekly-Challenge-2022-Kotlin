# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './Challenge34'

# class for testing
class LostNumbersTest < Minitest::Test
  def test_empty_array
    input = []
    expected = 'not valid array'
    assert_equal expected, LostNumbers.new.missing_numbers(input)
  end

  def test_ascending_repeated
    input = [1, 3, 3, 5]
    expected = 'not valid array'
    assert_equal expected, LostNumbers.new.missing_numbers(input)
  end

  def test_descending_repeated
    input = [4, 4, 2, 1]
    expected = 'not valid array'
    assert_equal expected, LostNumbers.new.missing_numbers(input)
  end

  def test_ascending
    input = [1, 3, 5, 7]
    expected = [2, 4, 6]
    assert_equal expected, LostNumbers.new.missing_numbers(input)
  end

  def test_descending
    input = [7, 5, 3, 1]
    expected = [6, 4, 2]
    assert_equal expected, LostNumbers.new.missing_numbers(input)
  end

  def test_unordered
    input = [2, 9, 2, 4, 1]
    expected = 'not valid array'
    assert_equal expected, LostNumbers.new.missing_numbers(input)
  end
end
