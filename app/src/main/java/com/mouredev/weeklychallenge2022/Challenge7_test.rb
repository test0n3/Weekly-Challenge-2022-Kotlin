# frozen_string_literal: true

require_relative './Challenge7'

TESTS = { input: ['Here goes some text', 'AQUÍ VA TEXTO AQUÍ', 'Aquí! no aquí completos!',
                  'Hola, mi nombre es carlos. Mi nombre completo es Carlos Ayala (test1)'],
          output: [
            { 'here': 1, 'goes': 1, 'some': 1, 'text': 1 },
            { 'aquí': 2, 'va': 1, 'texto': 1 },
            { 'aquí': 2, 'no': 1, 'completos': 1 },
            { 'hola': 1, 'mi': 2, 'nombre': 2, 'es': 2, 'carlos': 2, 'completo': 1, 'ayala': 1, 'test1': 1 }
          ] }

TESTS[:input].each_with_index do |test, index|
  print "\noriginal:", test, "\n"
  string_count = Main.new(test)
  string_count.execute.each do |k, v|
    print "#{k} se ha repetido #{v} #{v > 1 ? 'veces' : 'vez'}\n"
  end
  puts 'expected: ', TESTS[:output][index]
end
