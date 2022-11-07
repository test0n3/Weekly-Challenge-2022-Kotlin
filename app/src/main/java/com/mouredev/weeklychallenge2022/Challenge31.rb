# frozen_string_literal: true

#
# Reto #31
# AÑOS BISIESTOS
# Fecha publicación enunciado: 01/08/22
# Fecha publicación resolución: 08/08/22
# Dificultad: FÁCIL
#
# Enunciado: Crea una función que imprima los 30 próximos años bisiestos siguientes a uno dado.
# - Utiliza el menor número de líneas para resolver el ejercicio.
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

# class Year
class Year
  def next_30_leap_years(year)
    result = []
    if leap_year?(year.to_i)
      result << year.to_i + 4
      29.times { |_| result << result.last + 4 }
    end
    result
  end

  def leap_year?(year)
    (year % 4).zero? && !(year % 100).zero? || (year % 400).zero?
  end
end
