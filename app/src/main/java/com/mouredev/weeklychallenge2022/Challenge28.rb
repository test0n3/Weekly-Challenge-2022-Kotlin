# frozen_string_literal: true

#
#  Reto #28
#  MÁQUINA EXPENDEDORA
#  Fecha publicación enunciado: 11/07/22
#  Fecha publicación resolución: 18/07/22
#  Dificultad: MEDIA
#
#  Enunciado: Simula el funcionamiento de una máquina expendedora creando
#  una operación que reciba dinero (array de monedas) y un número que indique
#  la selección del producto.
#  - El programa retornará el nombre del producto y un array con el
#    dinero de vuelta (con el menor número de monedas).
#  - Si el dinero es insuficiente o el número de producto no existe,
#    deberá indicarse con un mensaje y retornar todas las monedas.
#  - Si no hay dinero de vuelta, el array se retornará vacío.
#  - Para que resulte más simple, trabajaremos en céntimos con monedas
#    de 5, 10, 50, 100 y 200.
#  - Debemos controlar que las monedas enviadas estén dentro de las soportadas.
#
#  Información adicional:
#  - Usa el canal de nuestro discord (https://mouredev.com/discord)
#    "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
#  - Puedes hacer un Fork del repo y una Pull Request al repo original para
#    que veamos tu solución aportada.
#  - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al
#    de su publicación.
#  - Subiré una posible solución al ejercicio el lunes siguiente al
#    de su publicación.
#

# executing class
class Main
  def initialize(req)
    @pay = req[:pay]
    @code = req[:code]
  end

  def execute
    VendingMachine.new.payment(@code, @pay)
  end
end

# Vending Machine class
class VendingMachine
  ITEMS = { '001': { name: 'beer', cost: 350 },
            '002': { name: 'crackers', cost: 320 },
            '003': { name: 'M&M', cost: 250 },
            '004': { name: 'fried potatoes', cost: 150 } }.freeze
  COIN_CHANGE = [200, 100, 50, 10, 5].freeze

  def payment(code, pay_arr)
    return { msg: 'Not available', change: pay_arr } unless ITEMS.keys.map(&:to_s).include? code
    return { msg: 'Not enough money', change: pay_arr } if pay_arr.sum < ITEMS[code.to_sym][:cost]

    { msg: ITEMS[code.to_sym][:name], change: change(ITEMS[code.to_sym][:cost], pay_arr) }
  end

  private

  def change(cost, pay_arr)
    change = []
    difference = pay_arr.sum - cost # 0 or positive
    COIN_CHANGE.each do |coin|
      next unless coin <= difference

      repetition = difference / coin
      repetition.times { |_| change << coin }
      difference %= coin
    end
    change
  end
end
