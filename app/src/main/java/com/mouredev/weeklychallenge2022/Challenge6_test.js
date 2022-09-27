const reverseString = require("./Challenge6");

const tests = {
  input: ["Hola mundo", "Hello world", "here goes some text to be inverted"],
  output: ["odnum aloH", "dlrow olleH", "detrevni eb ot txet emos seog ereh"],
};

tests.input.forEach((test, index) => {
  console.log("\noriginal:", test);
  console.log(reverseString.func(test));
  console.log("expected: ", tests.output[index]);
});
