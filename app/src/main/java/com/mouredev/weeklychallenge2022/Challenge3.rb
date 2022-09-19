# frozen_string_literal: true

#
#  Reto #3
#  ¿ES UN NÚMERO PRIMO?
#  Fecha publicación enunciado: 17/01/22
#  Fecha publicación resolución: 24/01/22
#  Dificultad: MEDIA
#
#  Enunciado: Escribe un programa que se encargue de comprobar si un número
#  es o no primo.
#  Hecho esto, imprime los números primos entre 1 y 100.
#
#  Información adicional:
#  - Usa el canal de nuestro discord (https://mouredev.com/discord)
#   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
#  - Puedes hacer un Fork del repo y una Pull Request al repo original para
#   que veamos tu solución aportada.
#  - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al
#   de su publicación.
#  - Subiré una posible solución al ejercicio el lunes siguiente al
#   de su publicación.
#

# class for execution
class Main
  def execute
    (1..100).each do |num|
      puts num if Number.new.prime(num)
    end
  end
end

# class to detect prime numbers
class Number
  def prime(num)
    return false if num < 2

    (2...num).each do |n|
      return false if (num % n).zero?
    end
    true
  end
end

primo = Main.new
primo.execute
