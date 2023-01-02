# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './Challenge8'

# class fot resting
class DecimalToBinaryTest < Minitest::Test
  def test_decimal_to_binary1
    input = 7
    expected = '111'
    assert_equal expected, NumberConversion.new.decimal_to_binary(input)
  end

  def test_decimal_to_binary2
    input = 21
    expected = '10101'
    assert_equal expected, NumberConversion.new.decimal_to_binary(input)
  end

  def test_decimal_to_binary4
    input = 2023
    expected = '11111100111'
    assert_equal expected, NumberConversion.new.decimal_to_binary(input)
  end

  def test_decimal_to_binary6
    input = 250_142
    expected = '111101000100011110'
    assert_equal expected, NumberConversion.new.decimal_to_binary(input)
  end
end
