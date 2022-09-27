# frozen_string_literal: false

#
#  Reto #6
#  INVIRTIENDO CADENAS
#  Fecha publicación enunciado: 07/02/22
#  Fecha publicación resolución: 14/02/22
#  Dificultad: FÁCIL
#
#  Enunciado: Crea un programa que invierta el orden de una cadena de texto
#  sin usar funciones propias del lenguaje que lo hagan de forma automática.
#  - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
#
#  Información adicional:
#  - Usa el canal de nuestro discord (https://mouredev.com/discord)
#   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
#  - Puedes hacer un Fork del repo y una Pull Request al repo original
#   para que veamos tu solución aportada.
#  - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al
#   de su publicación.
#  - Subiré una posible solución al ejercicio el lunes siguiente al
#   de su publicación.

# Solución:
# Requerimientos:
# Ruby 2.7.3

# Ejecución:
# ruby Challenge6_test.rb

# Class to run CharacterString
class Main
  def initialize(string)
    @string = string
  end

  def execute
    CharacterString.new.invert_string(@string)
  end
end

# Class to inver string
class CharacterString
  def invert_string(string)
    # easy
    # string.reverse

    # hard way
    inverted_string = ''
    chars = string.chars
    chars.size.times { inverted_string << chars.pop }
    inverted_string
  end
end
