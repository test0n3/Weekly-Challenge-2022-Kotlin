# frozen_string_literal: true

#
# Reto #29
# ORDENA LA LISTA
# Fecha publicación enunciado: 18/07/22
# Fecha publicación resolución: 26/07/22
# Dificultad: FÁCIL
#
# * Enunciado: Crea una función que ordene y retorne una matriz de números.
# - La función recibirá un listado (por ejemplo [2, 4, 6, 8, 9]) y
#   un parámetro adicional "Asc" o "Desc" para indicar si debe ordenarse de
#   menor a mayor o de mayor a menor.
# - No se pueden utilizar funciones propias del lenguaje que lo resuelvan
#   automáticamente.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord)
#   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para
#   que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al
#   de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al
#   de su publicación.
#
#
class List
  def order(input)
    new_list = input[:list]
    order = input[:order]

    new_list.size.times do |idx|
      elem_pos = find_by_order(idx, new_list, order)
      new_list = swap(new_list, idx, elem_pos)
    end
    new_list
  end

  def find_by_order(start_pos, list, order)
    elem_pos = start_pos
    (start_pos...list.size).each do |elem|
      case order
      when 'desc'
        elem_pos = elem if list[elem] > list[elem_pos]
      else
        elem_pos = elem if list[elem] < list[elem_pos]
      end
    end
    elem_pos
  end

  def swap(list, pos1, pos2)
    temp = list[pos1]
    list[pos1] = list[pos2]
    list[pos2] = temp
    list
  end
end
