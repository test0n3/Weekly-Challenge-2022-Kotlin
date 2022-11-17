# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './Challenge33'

# class for testing
class ChineseYearTest < Minitest::Test
  def test_valid_xx_century_year
    input = 1924
    expected = { animal: 'rat', element: 'wood' }
    assert_equal expected, Year.new.chinese_element_animal(input)
  end

  def test_valid_xxi_century_year
    input = 2060
    expected = { animal: 'dragon', element: 'metal' }
    assert_equal expected, Year.new.chinese_element_animal(input)
  end

  def test_valid_xix_century_year
    input = 1850
    expected = { animal: 'dog', element: 'metal' }
    assert_equal expected, Year.new.chinese_element_animal(input)
  end

  def test_valid_i_century_year
    input = 60
    expected = { animal: 'monkey', element: 'metal' }
    assert_equal expected, Year.new.chinese_element_animal(input)
  end

  def test_invalid_year
    input = 0
    expected = { msg: '0 is not a valid year' }
    assert_equal expected, Year.new.chinese_element_animal(input)
  end
end
