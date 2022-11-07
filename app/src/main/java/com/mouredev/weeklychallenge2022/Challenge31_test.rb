# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './Challenge31'

# class for testing
class LeapYearsTest < Minitest::Test
  def test_leap_year_bigger1582
    input = '2000'
    expected = [2004, 2008, 2012, 2016, 2020, 2024, 2028, 2032, 2036, 2040,
                2044, 2048, 2052, 2056, 2060, 2064, 2068, 2072, 2076, 2080,
                2084, 2088, 2092, 2096, 2100, 2104, 2108, 2112, 2116, 2120]
    assert_equal 30, Year.new.next_30_leap_years(input).size
    assert_equal expected, Year.new.next_30_leap_years(input)
  end

  def test_not_leap_year_bigger1582
    input = '1800'
    expected = []
    assert_equal 0, Year.new.next_30_leap_years(input).size
    assert_equal expected, Year.new.next_30_leap_years(input)
  end

  def test_leap_year_less1582
    input = '20'
    expected = [24, 28, 32, 36, 40, 44, 48, 52, 56, 60,
                64, 68, 72, 76, 80, 84, 88, 92, 96, 100,
                104, 108, 112, 116, 120, 124, 128, 132, 136, 140]
    assert_equal 30, Year.new.next_30_leap_years(input).size
    assert_equal expected, Year.new.next_30_leap_years(input)
  end

  def test_not_leap_year_less1582
    input = '113'
    expected = []
    assert_equal 0, Year.new.next_30_leap_years(input).size
    assert_equal expected, Year.new.next_30_leap_years(input)
  end
end
