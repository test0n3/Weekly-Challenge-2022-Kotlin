/*
 * Reto #28
 * MÁQUINA EXPENDEDORA
 * Fecha publicación enunciado: 11/07/22
 * Fecha publicación resolución: 18/07/22
 * Dificultad: MEDIA
 *
 * Enunciado: Simula el funcionamiento de una máquina expendedora
 * creando una operación que reciba dinero (array de monedas) y un número
 * que indique la selección del producto.
 * - El programa retornará el nombre del producto y un array con el dinero
 *   de vuelta (con el menor número de monedas).
 * - Si el dinero es insuficiente o el número de producto no existe,
 *   deberá indicarse con un mensaje y retornar todas las monedas.
 * - Si no hay dinero de vuelta, el array se retornará vacío.
 * - Para que resulte más simple, trabajaremos en céntimos con monedas
 *   de 5, 10, 50, 100 y 200.
 * - Debemos controlar que las monedas enviadas estén dentro de las soportadas.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord)
 *   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para
 *   que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al
 *   de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al
 *   de su publicación.
 *
 */

module.exports.func = function vendingMachine(input) {
  const code = input.code;
  const payArr = input.pay;
  if (!available(code)) return { msg: "Not available", change: payArr };
  if (enoughPay(payArr, code)) {
    return { msg: "Not enough money", change: payArr };
  }
  return {
    msg: items[code]["name"],
    change: change(payArr, items[code]["cost"]),
  };
};

const items = {
  "001": { name: "beer", cost: 350 },
  "002": { name: "crackers", cost: 320 },
  "003": { name: "M&M", cost: 250 },
  "004": { name: "fried potatoes", cost: 150 },
};
const coinsChange = [200, 100, 50, 10, 5];

const available = (code) => Object.keys(items).includes(code);

const enoughPay = (arr, code) =>
  arr.reduce((prev, curr) => prev + curr, 0) < items[code]["cost"];

const change = (arr, cost) => {
  let change = [];
  let difference = arr.reduce((prev, curr) => prev + curr, 0) - cost;
  coinsChange.forEach((coin) => {
    if (coin <= difference) {
      let repetition = Math.floor(difference / coin);

      change.push(...Array(repetition).fill(coin));
      // for (let i = 0; i < repetition; i++) {
      //   change.push(coin);
      // }
      difference %= coin;
    }
  });

  return change;
};
