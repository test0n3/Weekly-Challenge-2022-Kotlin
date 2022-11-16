/*
 * Reto #32
 * EL SEGUNDO
 * Fecha publicación enunciado: 08/08/22
 * Fecha publicación resolución: 15/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Dado un listado de números, encuentra el SEGUNDO más grande.
 *
 * Información adicional:
 * - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Tienes toda la información sobre los retos semanales en https://retosdeprogramacion.com/semanales2022.
 *
 */

module.exports.func = function secondBiggest(input) {
  if (input.length < 2) return null;
  let newList = sortArr(input);
  for (let i = 1; i < newList.length; i++) {
    if (newList[0] > newList[i]) return newList[i];
  }
  return null;
};

const sortArr = (unorderedArr) => {
  for (let i = 0; i < unorderedArr.length - 1; i++) {
    for (let j = i; j < unorderedArr.length; j++) {
      if (unorderedArr[i] < unorderedArr[j]) {
        let temp = unorderedArr[i];
        unorderedArr[i] = unorderedArr[j];
        unorderedArr[j] = temp;
      }
    }
  }
  return unorderedArr;
};
