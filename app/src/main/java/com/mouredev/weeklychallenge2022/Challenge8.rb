# frozen_string_literal: true

#
# Reto #8
# DECIMAL A BINARIO
# Fecha publicación enunciado: 18/02/22
# Fecha publicación resolución: 02/03/22
# Dificultad: FÁCIL
#
# Enunciado: Crea un programa se encargue de transformar un número decimal a
# binario sin utilizar funciones propias del lenguaje que lo hagan directamente.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord)
#   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para
#   que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#
#

# Solución no considera binarios para números negativos.
# Para número negativos hay consideraciones diferentes.
# - conservar el signo
# - devolver el valor complementario del binario sin signo, para 32 bits
#   ej: 7 -> 111, -7 -> 11111111111111111111111111111001

# class to convert numbers
class NumberConversion
  def decimal_to_binary(input)
    binary = ''
    number = input

    while number != 0
      temp_bin = number % 2
      number /= 2
      binary = temp_bin.to_s + binary
    end

    binary
  end
end
