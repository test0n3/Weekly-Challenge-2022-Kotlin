# frozen_string_literal: true

#
# Reto #30
# MARCO DE PALABRAS
# Fecha publicación enunciado: 26/07/22
# Fecha publicación resolución: 01/08/22
# Dificultad: FÁCIL
#
# Enunciado: Crea una función que reciba un texto y muestre cada palabra en una línea, formando
# un marco rectangular de asteriscos.
# - ¿Qué te parece el reto? Se vería así:
#   **********
#   * ¿Qué   *
#   * te     *
#   * parece *
#   * el     *
#   * reto?  *
#   **********
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord)
#   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para
#   que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al
#   de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente
#   al de su publicación.
#
#
class Frame
  def word_frame(text)
    return '' if text.strip.size.zero?

    words_list = text.split(' ')
    largest_word = words_list.map(&:size).max

    head_tail = '*' * (largest_word + 4)
    body = words_list.map { |word| "* #{word}#{' ' * (largest_word - word.size)} *" }

    body.unshift(head_tail)
    body.push(head_tail)
    body.join("\n")
  end
end
