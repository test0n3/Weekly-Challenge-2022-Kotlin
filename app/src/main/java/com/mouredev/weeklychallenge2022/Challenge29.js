/*
 * Reto #29
 * ORDENA LA LISTA
 * Fecha publicación enunciado: 18/07/22
 * Fecha publicación resolución: 26/07/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que ordene y retorne una matriz de números.
 * - La función recibirá un listado (por ejemplo [2, 4, 6, 8, 9]) y un parámetro adicional
 *   "Asc" o "Desc" para indicar si debe ordenarse de menor a mayor o de mayor a menor.
 * - No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

module.exports.func = function listOrder(input) {
  let order = input.order;
  let list = input.list;
  for (let idx = 0; idx < list.length; idx++) {
    let elemPos = findByOrder(idx, list, order);
    list = swap(list, idx, elemPos);
  }
  return list;
};

const findByOrder = (startPos, list, order) => {
  let elemPos = startPos;
  for (let idx = startPos; idx < list.length; idx++) {
    switch (order) {
      case "desc":
        if (list[idx] > list[elemPos]) elemPos = idx;
        break;
      default:
        if (list[idx] < list[elemPos]) elemPos = idx;
    }
  }
  return elemPos;
};

const swap = (list, pos1, pos2) => {
  const temp = list[pos1];
  list[pos1] = list[pos2];
  list[pos2] = temp;
  return list;
};
