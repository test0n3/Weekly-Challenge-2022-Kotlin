# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './Challenge32'

# class for testing
class UserArrayTest < Minitest::Test
  def test_simple_list
    input = [4, 0, 3, 6, 1, 2]
    expected = 4
    assert_equal expected, UserArray.new.second_biggest(input)
  end

  def test_list_with_repeated_second_biggest
    input = [1, 2, 3, 4, 3, 2, 1]
    expected = 3
    assert_equal expected, UserArray.new.second_biggest(input)
  end

  def test_list_with_repeated_first_second_element
    input = [9, 12, 7, 5, 2, 9, 12]
    expected = 9
    assert_equal expected, UserArray.new.second_biggest(input)
  end

  def test_empty_list
    input = []
    assert_nil UserArray.new.second_biggest(input)
  end

  def test_repeated_list
    input = [4, 4, 4, 4, 4]
    assert_nil UserArray.new.second_biggest(input)
  end
end
