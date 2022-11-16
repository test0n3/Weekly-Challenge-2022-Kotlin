# frozen_string_literal: true

#
# Reto #32
# EL SEGUNDO
# Fecha publicación enunciado: 08/08/22
# Fecha publicación resolución: 15/08/22
# Dificultad: FÁCIL
#
# Enunciado: Dado un listado de números, encuentra el SEGUNDO más grande.
#
# Información adicional:
# - Usa el canal de nuestro Discord (https://mouredev.com/discord)
#   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Tienes toda la información sobre los retos semanales en
#   https://retosdeprogramacion.com/semanales2022.
#
#

# class List
class UserArray
  def second_biggest(input)
    return nil if input.size < 2

    new_list = sort_arr(input)
    (1...new_list.size).each do |i|
      return new_list[i] if new_list[0] > new_list[i]
    end
    nil
  end

  private

  def sort_arr(unordered_arr)
    (0...unordered_arr.size - 1).each do |i|
      (i..unordered_arr.size - 1).each do |j|
        next unless unordered_arr[i] < unordered_arr[j]

        temp = unordered_arr[i]
        unordered_arr[i] = unordered_arr[j]
        unordered_arr[j] = temp
      end
    end
    unordered_arr
  end
end
