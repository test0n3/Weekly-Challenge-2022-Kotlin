const calculateArea = require("./Challenge4");

const tests = {
  input: [
    ["triangle", 10, 10],
    ["rectangle", 10, 10],
    ["square", 10],
    ["rectangle", 5, 5],
    ["triangle", 10, 5],
  ],
  output: [50, 100, 100, 25, 25],
};

tests.input.forEach((test, index) => {
  console.log("\noriginal: ", test);
  console.log(calculateArea.func(...test));
  console.log("expected:", tests.output[index]);
});
