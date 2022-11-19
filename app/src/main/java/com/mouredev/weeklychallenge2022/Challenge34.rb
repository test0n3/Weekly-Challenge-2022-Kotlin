# frozen_string_literal: true

#
# Reto #34
# LOS NÚMEROS PERDIDOS
# Fecha publicación enunciado: 22/08/22
# Fecha publicación resolución: 29/08/22
# Dificultad: FÁCIL
#
# Enunciado: Dado un array de enteros ordenado y sin repetidos, crea una
# función que calcule y retorne todos los que faltan entre el mayor y el menor.
# - Lanza un error si el array de entrada no es correcto.
#
# Información adicional:
# - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal"
#   para preguntas, dudas o prestar ayuda a la comunidad.
# - Tienes toda la información sobre los retos semanales en
#   https://retosdeprogramacion.com/semanales2022.
#

# class LostNumbers
class LostNumbers
  def missing_numbers(input)
    return 'not valid array' if input.size < 2

    arr_order = order(input[0], input[input.size - 1])
    missing_numbers = []
    (0...input.size - 1).each do |index|
      pair_order = order(input[index], input[index + 1])
      return 'not valid array' if (input[index] == input[index + 1]) || (pair_order != arr_order)

      missing_numbers.concat(gen_missing(input[index], input[index + 1], arr_order))
    end
    missing_numbers
  end

  def order(elem1, elem2)
    elem1 < elem2 ? 'asc' : 'desc'
  end

  def gen_missing(elem1, elem2, ord)
    if ord == 'asc'
      (elem1...elem2).drop(1).map { |elem| elem }
    else
      tests = (elem2...elem1).drop(1).map { |elem| elem }
      # tests.reverse
      temp = []
      tests.size.times { temp.push(tests.pop) }
      temp
    end
  end
end
