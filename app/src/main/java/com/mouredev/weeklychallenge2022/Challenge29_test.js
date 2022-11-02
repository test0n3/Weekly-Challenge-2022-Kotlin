const listOrder = require("./Challenge29");

const tests = {
  input: [
    { list: [10, 11, 1, 3, -1, 6, 4, 2, 5, 9, 7, 8, 0], order: "asc", nro: 0 },
    { list: [10, 11, 1, 3, -1, 6, 4, 2, 5, 9, 7, 8, 0], order: "desc", nro: 1 },
    { list: [], order: "asc", nro: 2 },
    { list: [10, 11, 1, -1, 6, 1, 4, 2, 4, 9, 0, 5, 4], order: "desc", nro: 3 },
    { list: [10, 11, 1, -1, 6, 1, 4, 2, 4, 9, 0, 5, 4], order: "asc", nro: 4 },
    { list: [10, 11, 1, 3, -1, 6, 4, 2, 5, 9, 7, 8, 0], order: "", nro: 5 },
  ],
  output: [
    [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
    [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1],
    [],
    [11, 10, 9, 6, 5, 4, 4, 4, 2, 1, 1, 0, -1],
    [-1, 0, 1, 1, 2, 4, 4, 4, 5, 6, 9, 10, 11],
    [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
  ],
};

let errors = 0;

tests.input.forEach((test, index) => {
  const starter = listOrder.func(test);
  const expected = tests.output[index];
  if (JSON.stringify(starter) != JSON.stringify(expected)) {
    errors += 1;
    console.log("\noriginal:", test);
    console.log(starter);
    console.log("expected:", expected);
  }
});

if (errors == 0) console.log("Tests passed, 0 errors");
if (errors != 0) console.log("Tests not passed,", errors, "errors");
