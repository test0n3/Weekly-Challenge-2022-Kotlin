/*
 * Reto #33
 * CICLO SEXAGENARIO CHINO
 * Fecha publicación enunciado: 15/08/22
 * Fecha publicación resolución: 22/08/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un función, que dado un año, indique el elemento y animal correspondiente
 * en el ciclo sexagenario del zodíaco chino.
 * - Información: https://www.travelchinaguide.com/intro/astrology/60year-cycle.htm
 * - El ciclo sexagenario se corresponde con la combinación de los elementos madera,
 *   fuego, tierra, metal, agua y los animales rata, buey, tigre, conejo, dragón, serpiente,
 *   caballo, oveja, mono, gallo, perro, cerdo (en este orden).
 * - Cada elemento se repite dos años seguidos.
 * - El último ciclo sexagenario comenzó en 1984 (Madera Rata).
 *
 * Información adicional:
 * - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Tienes toda la información sobre los retos semanales en https://retosdeprogramacion.com/semanales2022.
 *
 */

module.exports.func = function chineseElementAnimal(input) {
  const cycleYear = 60;
  const animals = [
    "rat",
    "ox",
    "tiger",
    "rabbit",
    "dragon",
    "snake",
    "horse",
    "sheep",
    "monkey",
    "rooster",
    "dog",
    "pig",
  ];
  const elements = [
    "wood",
    "wood",
    "fire",
    "fire",
    "earth",
    "earth",
    "metal",
    "metal",
    "water",
    "water",
  ];

  if (input == 0) return { msg: `${input} is not a valid year` };

  const years =
    input > 0
      ? (input - 4) % cycleYear
      : cycleYear - ((Math.abs(input) + 3) % cycleYear);

  return {
    animal: returnCycle(years, animals),
    element: returnCycle(years, elements),
  };
};

const returnCycle = (year, arr) => arr[year % arr.length];
