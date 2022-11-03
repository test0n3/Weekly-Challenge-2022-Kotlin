const wordFrame = require("./Challenge30");

const tests = {
  input: [
    "first word",
    "heregoessomewordwithoutspaces",
    "meek",
    "",
    "                             ",
    "there goes somestringwithoutspaces and some free words too",
    "there goes                   some string with space",
  ],
  output: [
    "*********\n* first *\n* word  *\n*********",
    "*********************************\n* heregoessomewordwithoutspaces *\n*********************************",
    "********\n* meek *\n********",
    "",
    "",
    "***************************\n* there                   *\n* goes                    *\n* somestringwithoutspaces *\n* and                     *\n* some                    *\n* free                    *\n* words                   *\n* too                     *\n***************************",
    "**********\n* there  *\n* goes   *\n* some   *\n* string *\n* with   *\n* space  *\n**********",
  ],
};

let errors = 0;
tests.input.forEach((test, index) => {
  const testFunction = wordFrame.func(test);
  const expected = tests.output[index];
  if (testFunction != expected) {
    errors += 1;
    console.log("\noriginal:", test);
    console.log(testFunction);
    console.log("expected:", expected);
  }
});

console.log(`Tests ${errors != 0 ? "not" : ""} passed. ${errors} errors.`);
