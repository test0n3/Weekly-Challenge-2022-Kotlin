# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './Challenge9'

# class for testing
class MorseCodeTest < Minitest::Test
  def test_to_morse_code
    # skip
    input = 'First message.'
    expected = '··—· ·· ·—· ··· —  —— · ··· ··· ·— ——· · ·—·—·—'
    assert_equal expected, MorseCode.new.translate(input)
  end

  def test_from_morse_code
    # skip
    input = '···· · ·—· ·  ——· ——— · ···  — ···· ·  —— · ··· ··· ·— ——· · ·—·—·—'
    expected = 'HERE GOES THE MESSAGE.'
    assert_equal expected, MorseCode.new.translate(input)
  end

  def test_to_morse_code_with_numbers_punctuation
    # skip
    input = '1 message with a number, and 1 punctuation'
    expected = '·————  —— · ··· ··· ·— ——· ·  ·—— ·· — ····  ·—  —· ··— —— —··· · ·—· ——··——  ·— —· —··  ·————  ·——· ··— —· —·—· — ··— ·— — ·· ——— —·'
    assert_equal expected, MorseCode.new.translate(input)
  end

  def test_from_morse_code_with_numbers_punctuation
    # skip
    input = '——···  ·—— ——— ·—· —·· ···  ·—— ·· — ····  —· ··— —— —··· · ·—· ··· ——··——  ·— —· —··  ·———— —————  ·——· ··— —· —·—· — ··— ·— — ·· ——— —·  ——— ·—·  ·—·· · ··· ··· ·—·—·—'
    expected = '7 WORDS WITH NUMBERS, AND 10 PUNCTUATION OR LESS.'
    assert_equal expected, MorseCode.new.translate(input)
  end
end
