/*
 * Reto #31
 * AÑOS BISIESTOS
 * Fecha publicación enunciado: 01/08/22
 * Fecha publicación resolución: 08/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que imprima los 30 próximos años bisiestos siguientes a uno dado.
 * - Utiliza el menor número de líneas para resolver el ejercicio.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord)
 *  "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original
 *   para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al
 *   de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

module.exports.func = function next30LeapYears(year) {
  let result = [];
  if (leapYear(parseInt(year))) {
    result.push(parseInt(year) + 4);
    for (let i = 0; i < 29; i++) {
      result.push(result[result.length - 1] + 4);
    }
  }
  return result;
};

const leapYear = (year) =>
  (year % 4 == 0 && !(year % 100 == 0)) || year % 400 == 0;
