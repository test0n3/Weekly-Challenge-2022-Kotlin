const decimalToBinary = require("./Challenge8");

const tests = {
  input: [7, 21, 2023, 250142],
  output: ["111", "10101", "11111100111", "111101000100011110"],
};

let errors = 0;
tests.input.forEach((test, index) => {
  const testFunction = decimalToBinary.func(test);
  const expected = tests.output[index];
  if (testFunction != expected) {
    errors += 1;
    console.log("\noriginal:", test);
    console.log(testFunction);
    console.log("expected:", expected);
  }
});

console.log(`Tests${errors != 0 ? " not " : " "}passed, ${errors} errors`);
