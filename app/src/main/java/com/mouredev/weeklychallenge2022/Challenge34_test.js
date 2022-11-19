const lostNumbers = require("./Challenge34");

const tests = {
  input: [
    [],
    [1, 3, 3, 5],
    [4, 4, 2, 1],
    [1, 3, 5, 7],
    [7, 5, 3, 1],
    [2, 9, 2, 4, 1],
  ],
  output: [
    "not valid array",
    "not valid array",
    "not valid array",
    [2, 4, 6],
    [6, 4, 2],
    "not valid array",
  ],
};

let errors = 0;
tests.input.forEach((test, index) => {
  const testFunction = lostNumbers.func(test);
  const expected = tests.output[index];
  if (JSON.stringify(testFunction) != JSON.stringify(expected)) {
    errors += 1;
    console.log("\noriginal: ", test);
    console.log(testFunction);
    console.log("expected:", expected);
  }
});

console.log(`\nTests${errors != 0 ? " not " : " "}passed, ${errors} errors`);
