const secondBiggest = require("./Challenge32");

const tests = {
  input: [
    [4, 0, 3, 6, 1, 2],
    [1, 2, 3, 4, 3, 2, 1],
    [9, 12, 7, 5, 2, 9, 12],
    [],
    [4, 4, 4, 4, 4],
  ],
  output: [4, 3, 9, null, null],
};

let errors = 0;
tests.input.forEach((test, index) => {
  const testFunction = secondBiggest.func(test);
  const expected = tests.output[index];
  if (testFunction != expected) {
    errors += 1;
    console.log("\noriginal:", test);
    console.log(testFunction);
    console.log("expected:", expected);
  }
});

console.log(
  `Number of tests: ${tests.input.length}\nTests${
    errors != 0 ? " not " : " "
  }passed,\n${errors} errors.`
);
