const chineseElementAnimal = require("./Challenge33");

const tests = {
  input: [1924, 2060, 1850, 60, 0],
  output: [
    { animal: "rat", element: "wood" },
    { animal: "dragon", element: "metal" },
    { animal: "dog", element: "metal" },
    { animal: "monkey", element: "metal" },
    { msg: "0 is not a valid year" },
  ],
};

let errors = 0;
tests.input.forEach((test, index) => {
  const testFunction = chineseElementAnimal.func(test);
  const expected = tests.output[index];
  if (JSON.stringify(testFunction) != JSON.stringify(expected)) {
    errors += 1;
    console.log("\noriginal:", test);
    console.log(testFunction);
    console.log("expected: ", expected);
  }
});

console.log(`Tests${errors != 0 ? " not " : " "}passed, ${errors} errors.`);
