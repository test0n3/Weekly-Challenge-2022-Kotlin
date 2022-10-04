# frozen_string_literal: true

require_relative './Challenge28'

TESTS = {
  input: [{ code: '001', pay: [200, 200] },
          { code: '002', pay: [100, 50, 50, 20, 20, 20, 20, 20, 20] },
          { code: '003', pay: [200, 200] },
          { code: '004', pay: [200] },
          { code: '005', pay: [100] },
          { code: '001', pay: [10, 10] }],
  output: [{ msg: 'beer', change: [50] },
           { msg: 'crackers', change: [] },
           { msg: 'M&M', change: [100, 50] },
           { msg: 'fried potatoes', change: [50] },
           { msg: 'Not available', change: [100] },
           { msg: 'Not enough money', change: [10, 10] }]
}.freeze

TESTS[:input].each_with_index do |test, index|
  print "\noriginal:", test, "\n"
  vending_machine = Main.new(test)

  print vending_machine.execute, "\n"
  print 'expected:', TESTS[:output][index], "\n"
end
