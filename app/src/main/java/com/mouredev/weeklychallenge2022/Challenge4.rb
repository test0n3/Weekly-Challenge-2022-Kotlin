# frozen_string_literal: true

#
#  Reto #4
#  ÁREA DE UN POLÍGONO
#  Fecha publicación enunciado: 24/01/22
#  Fecha publicación resolución: 31/01/22
#  Dificultad: FÁCIL
#
#  Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que
#  sea capaz de calcular y retornar el área de un polígono.
#  - La función recibirá por parámetro sólo UN polígono a la vez.
#  - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
#  - Imprime el cálculo del área de un polígono de cada tipo.
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

# Solución
# Requerimientos:
# ruby 2.7.3

# Ejecución:
# ruby Challenge4_test.rb

# Class to execute formula
class Main
  def initialize(arr)
    @method = arr[0]
    @size1 = arr[1]
    @size2 = arr[2]
  end

  def execute
    case @method
    when 'triangle'
      polygon_area = Triangle.new(@size1, @size2)
    when 'square'
      polygon_area = Rectangle.new(@size1, @size1)
    when 'rectangle'
      polygon_area = Rectangle.new(@size1, @size2)
    end
    polygon_area.calculate_area
  end
end

# class to define polygons
class Polygon
  def initialize(size1, size2)
    @length = size1
    @heigth = size2
  end

  def calculate_area
    @length * @heigth
  end
end

# class for rectangles an squares
class Rectangle < Polygon; end

# class for triangles
class Triangle < Polygon
  def calculate_area
    super / 2.0
  end
end
