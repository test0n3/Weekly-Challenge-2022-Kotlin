/*
 * Reto #9
 * CÓDIGO MORSE
 * Fecha publicación enunciado: 02/03/22
 * Fecha publicación resolución: 07/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.
 * - Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
 * - En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
 * - El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

const alphabet = {
  A: "·—",
  B: "—···",
  C: "—·—·",
  CH: "————",
  D: "—··",
  E: "·",
  F: "··—·",
  G: "——·",
  H: "····",
  I: "··",
  J: "·———",
  K: "—·—",
  L: "·—··",
  M: "——",
  N: "—·",
  Ñ: "——·——",
  O: "———",
  P: "·——·",
  Q: "——·—",
  R: "·—·",
  S: "···",
  T: "—",
  U: "··—",
  V: "···—",
  W: "·——",
  X: "—··—",
  Y: "—·——",
  Z: "——··",
  0: "—————",
  1: "·————",
  2: "··———",
  3: "···——",
  4: "····—",
  5: "·····",
  6: "—····",
  7: "——···",
  8: "———··",
  9: "————·",
  ".": "·—·—·—",
  ",": "——··——",
  "?": "··——··",
  '"': "·—··—·",
  "/": "—··—·",
};
const alphabetWithSpace = (key) => {
  if (Object.keys(alphabet).includes(key)) {
    return alphabet[key] + " ";
  } else {
    return key;
  }
};

module.exports.func = function morseCode(input) {
  if (input.match(/(·|—)/gm)) {
    return decode(input);
  } else {
    return encode(input);
  }
};

const decode = (input) => {
  return input
    .split("  ")
    .map((word) =>
      word
        .split(" ")
        .map((char) => searchMorse(char))
        .join("")
    )
    .join(" ");
};

const encode = (input) => {
  return input
    .toUpperCase()
    .split("")
    .map((char) => alphabetWithSpace(char))
    .join("")
    .trim();
};

const searchMorse = (morse) => {
  return Object.keys(alphabet).find((key) => alphabet[key] === morse);
};
