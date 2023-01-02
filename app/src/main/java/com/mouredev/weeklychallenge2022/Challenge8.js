/*
 * Reto #8
 * DECIMAL A BINARIO
 * Fecha publicación enunciado: 18/02/22
 * Fecha publicación resolución: 02/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa se encargue de transformar un número decimal
 * a binario sin utilizar funciones propias del lenguaje que lo hagan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord)
 *   "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para
 *   que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

/* Solución no considera binarios para números negativos.
 * Para número negativos hay consideraciones diferentes.
 * - conservar el signo
 * - devolver el valor complementario del binario sin signo, para 32 bits
 * ej: 7 -> 111, -7 -> 11111111111111111111111111111001
 */

module.exports.func = function decimalToBinary(input) {
  let binary = "";
  let number = input;

  while (number >= 1) {
    let tempBin = number % 2;
    number = Math.floor(number / 2);
    binary = tempBin + binary;
  }
  return binary;
};
