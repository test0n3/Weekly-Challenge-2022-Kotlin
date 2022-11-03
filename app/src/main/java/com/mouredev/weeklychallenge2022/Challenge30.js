/*
 * Reto #30
 * MARCO DE PALABRAS
 * Fecha publicación enunciado: 26/07/22
 * Fecha publicación resolución: 01/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba un texto y muestre cada palabra en una línea, formando
 * un marco rectangular de asteriscos.
 * - ¿Qué te parece el reto? Se vería así:
 *   **********
 *   * ¿Qué   *
 *   * te     *
 *   * parece *
 *   * el     *
 *   * reto?  *
 *   **********
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

module.exports.func = function wordFrame(text) {
  if (text.trim().length == 0) return "";

  const wordsList = cleanCell(text.split(" "));
  const largestSize = wordsList
    .map((word) => word.length)
    .sort((a, b) => b - a)[0];

  let body = wordsList.map(
    (word) => `* ${word}${spaces(largestSize, word.length)} *`
  );

  body.unshift(headTail(largestSize));
  body.push(headTail(largestSize));
  return body.join("\n");
};

const headTail = (wordLength) => {
  let line = "";
  for (let i = 0; i < wordLength + 4; i++) {
    line = `${line}*`;
  }
  return line;
};

const spaces = (maxLength, wordLength) => {
  let line = "";
  for (let i = 0; i < maxLength - wordLength; i++) {
    line = `${line} `;
  }
  return line;
};

const cleanCell = (arr) => arr.filter((cell) => cell.match(/\w/));
