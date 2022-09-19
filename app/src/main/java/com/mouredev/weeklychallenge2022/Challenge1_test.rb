# frozen_string_literal: true

require_relative './Challenge1'

tests = { input: [{ word1: 'amor', word2: 'roma' },
                  { word1: 'mother-in-law', word2: 'hitler woman' },
                  { word1: 'debit card', word2: 'bad credit' },
                  { word1: 'some word', word2: 'another word' },
                  { word1: '', word2: '' },
                  { word1: ' ', word2: ' ' }],
          output: [{ msg: true },
                   { msg: true },
                   { msg: true },
                   { msg: false },
                   { msg: false },
                   { msg: false }] }

tests[:input].each_with_index do |test, index|
  puts "\noriginal: #{test}"
  anagram = Main.new(test)
  puts anagram.execute
  puts "output: #{tests[:output][index]}"
end
