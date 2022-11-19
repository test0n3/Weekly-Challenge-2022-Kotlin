/*
 * Reto #34
 * LOS NÚMEROS PERDIDOS
 * Fecha publicación enunciado: 22/08/22
 * Fecha publicación resolución: 29/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Dado un array de enteros ordenado y sin repetidos, crea una función que calcule
 * y retorne todos los que faltan entre el mayor y el menor.
 * - Lanza un error si el array de entrada no es correcto.
 *
 * Información adicional:
 * - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal"
 *   para preguntas, dudas o prestar ayuda a la comunidad.
 * - Tienes toda la información sobre los retos semanales en
 *   https://retosdeprogramacion.com/semanales2022.
 *
 */

module.exports.func = function lostNumbers(input) {
  if (input.length < 2) return "not valid array";

  const arrOrder = order(input[0], input[input.length - 1]);
  let missingNumbers = [];
  for (let index = 0; index < input.length - 1; index++) {
    const pairOrder = order(input[index], input[index + 1]);
    if (input[index] == input[index + 1] || pairOrder != arrOrder)
      return "not valid array";
    missingNumbers = missingNumbers.concat(
      genMissing(input[index], input[index + 1], arrOrder)
    );
  }
  return missingNumbers;
};

const order = (elem1, elem2) => (elem1 < elem2 ? "asc" : "desc");

const genMissing = (elem1, elem2, ord) => {
  let missingList = [];
  if (ord == "asc") {
    for (let i = elem1 + 1; i < elem2; i++) {
      missingList.push(i);
    }
  } else {
    for (let j = elem1 - 1; j > elem2; j--) {
      missingList.push(j);
    }
  }
  return missingList;
};
