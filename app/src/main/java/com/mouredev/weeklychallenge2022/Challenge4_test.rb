# frozen_string_literal: true

require_relative './Challenge4'

TESTS = { input: [['triangle', 10, 10].freeze,
                  ['rectangle', 10, 10].freeze,
                  ['square', 10].freeze,
                  ['rectangle', 5, 5].freeze,
                  ['triangle', 10, 5].freeze],
          output: [50, 100, 100, 25, 25] }

TESTS[:input].each_with_index do |test, index|
  print "\noriginal:", test, "\n"
  calculate_area = Main.new(test)
  puts calculate_area.execute
  puts 'expected: ', TESTS[:output][index]
end
