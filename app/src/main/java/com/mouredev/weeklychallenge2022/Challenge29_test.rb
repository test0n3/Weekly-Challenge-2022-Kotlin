# frozen_string_literal: true

gem 'minitest', '~> 5.4'

require 'minitest/autorun'
require 'minitest/pride'
require_relative './Challenge29'

class OrderListTest < Minitest::Test
  def test_order_asc
    input = { list: [10, 11, 1, 3, -1, 6, 4, 2, 5, 9, 7, 8, 0], order: 'asc' }
    expected = [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

    assert_equal expected, List.new.order(input)
  end

  def test_order_desc
    input = { list: [10, 11, 1, 3, -1, 6, 4, 2, 5, 9, 7, 8, 0], order: 'desc' }
    expected = [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1]

    assert_equal expected, List.new.order(input)
  end

  def test_empty_asc
    input = { list: [], order: 'asc' }
    expected = []

    assert_equal expected, List.new.order(input)
  end

  def test_repeated_desc
    input = { list: [10, 11, 1, -1, 6, 1, 4, 2, 4, 9, 0, 5, 4], order: 'desc' }
    expected = [11, 10, 9, 6, 5, 4, 4, 4, 2, 1, 1, 0, -1]

    assert_equal expected, List.new.order(input)
  end

  def test_repeated_asc
    input = { list: [10, 11, 1, -1, 6, 1, 4, 2, 4, 9, 0, 5, 4], order: 'asc' }
    expected = [-1, 0, 1, 1, 2, 4, 4, 4, 5, 6, 9, 10, 11]

    assert_equal expected, List.new.order(input)
  end

  def test_empty_order
    input = { list: [10, 11, 1, 3, -1, 6, 4, 2, 5, 9, 7, 8, 0], order: '' }
    expected = [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

    assert_equal expected, List.new.order(input)
  end
end
