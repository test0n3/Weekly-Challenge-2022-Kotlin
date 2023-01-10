const morseCode = require("./Challenge9");

const tests = {
  input: [
    "First message.",
    "···· · ·—· ·  ——· ——— · ···  — ···· ·  —— · ··· ··· ·— ——· · ·—·—·—",
    "1 message with a number, and 1 punctuation",
    "——···  ·—— ——— ·—· —·· ···  ·—— ·· — ····  —· ··— —— —··· · ·—· ··· ——··——  ·— —· —··  ·———— —————  ·——· ··— —· —·—· — ··— ·— — ·· ——— —·  ——— ·—·  ·—·· · ··· ··· ·—·—·—",
  ],
  output: [
    "··—· ·· ·—· ··· —  —— · ··· ··· ·— ——· · ·—·—·—",
    "HERE GOES THE MESSAGE.",
    "·————  —— · ··· ··· ·— ——· ·  ·—— ·· — ····  ·—  —· ··— —— —··· · ·—· ——··——  ·— —· —··  ·————  ·——· ··— —· —·—· — ··— ·— — ·· ——— —·",
    "7 WORDS WITH NUMBERS, AND 10 PUNCTUATION OR LESS.",
  ],
};

let errors = 0;
tests.input.forEach((test, index) => {
  const testFunction = morseCode.func(test);
  const expected = tests.output[index];
  if (testFunction != expected) {
    errors += 1;
    console.log("\noriginal:", test);
    console.log(testFunction);
    console.log("expected:", expected);
  }
});

console.log(`Tests${errors != 0 ? " not " : " "}passed, ${errors} errors`);
