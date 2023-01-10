# frozen_string_literal: true

# Reto #9
# CÓDIGO MORSE
# Fecha publicación enunciado: 02/03/22
# Fecha publicación resolución: 07/03/22
# Dificultad: MEDIA
#
# Enunciado: Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.
# - Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
# - En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
# - El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord)
#   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#
#

# class Morse code
class MorseCode
  ALPHABET = { 'A' => '·—', 'B' => '—···', 'C' => '—·—·', 'CH' => '————',
               'D' => '—··', 'E' => '·', 'F' => '··—·', 'G' => '——·', 'H' => '····',
               'I' => '··', 'J' => '·———', 'K' => '—·—', 'L' => '·—··', 'M' => '——',
               'N' => '—·', 'Ñ' => '——·——', 'O' => '———', 'P' => '·——·', 'Q' => '——·—',
               'R' => '·—·', 'S' => '···', 'T' => '—', 'U' => '··—', 'V' => '···—',
               'W' => '·——', 'X' => '—··—', 'Y' => '—·——', 'Z' => '——··',
               '0' => '—————', '1' => '·————', '2' => '··———', '3' => '···——',
               '4' => '····—', '5' => '·····', '6' => '—····', '7' => '——···',
               '8' => '———··', '9' => '————·',
               '.' => '·—·—·—', ',' => '——··——', '?' => '··——··',
               '"' => '·—··—·', '/' => '—··—·' }.freeze

  ALPHABET_WITH_SPACES = ALPHABET.transform_values { |m| "#{m} " }
  # .merge({ ' ' => ' ' })
  ALPHABET_WITH_SPACES.default_proc = proc do |hash, key|
    hash[key] = key
  end

  def translate(input)
    return from_morse_code(input) if input.match?(/(·|—)/)

    to_morse_code(input)
  end

  def to_morse_code(input)
    input.upcase.gsub(/./, ALPHABET_WITH_SPACES).strip
    # input.upcase.split(' ').map do |word|
    # word.gsub(%r{[A-Z0-9.,?"/]}, **ALPHABET_WITH_SPACES).strip
    # word.gsub(/./, ALPHABET_WITH_SPACES).strip
    # end.join('  ')

    # input.upcase.split(' ').map do |word|
    #   word.chars.map { |char| ALPHABET[char] }.join(' ')
    # end.join('  ')

    # input.upcase.each_char.map { |c| ALPHABET_WITH_SPACES[c] }.join.strip
    # input.upcase.each_char.map(&ALPHABET_WITH_SPACES).join.strip
  end

  def from_morse_code(input)
    input.split('  ').map do |word|
      word.split(' ').map { |char| ALPHABET.invert[char] }.join
    end.join(' ')
  end
end
