const next30LeapYears = require("./Challenge31");

const tests = {
  input: ["2000", "1800", "20", "113"],
  output: [
    [
      2004, 2008, 2012, 2016, 2020, 2024, 2028, 2032, 2036, 2040, 2044, 2048,
      2052, 2056, 2060, 2064, 2068, 2072, 2076, 2080, 2084, 2088, 2092, 2096,
      2100, 2104, 2108, 2112, 2116, 2120,
    ],
    [],
    [
      24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, 80, 84, 88, 92,
      96, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140,
    ],
    [],
  ],
};

let errors = 0;
tests.input.forEach((test, index) => {
  const testFunction = next30LeapYears.func(test);
  const expected = tests.output[index];
  if (JSON.stringify(expected) != JSON.stringify(testFunction)) {
    errors += 1;
    console.log("\noriginal: ", test);
    console.log(testFunction);
    console.log("expected:", expected);
  }
});

console.log(`Tests ${errors != 0 ? "not" : ""} passed. ${errors} errors`);
