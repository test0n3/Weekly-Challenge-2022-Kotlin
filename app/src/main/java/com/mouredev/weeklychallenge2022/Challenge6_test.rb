# frozen_string_literal: true

require_relative './Challenge6'

TESTS = { input: ['Hola mundo', 'Hello world', 'here goes some text to be inverted'].freeze,
          output: ['odnum aloH', 'dlrow olleH', 'detrevni eb ot txet emos seog ereh'] }

TESTS[:input].each_with_index do |test, index|
  print "\noriginal: ", test, "\n"
  inverted_string = Main.new(test)
  puts inverted_string.execute
  puts 'expected: ', TESTS[:output][index]
end
