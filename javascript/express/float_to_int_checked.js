// LEVEL: STD

"use strict";

try {
  BigInt(NaN);
  console.log("fits");
} catch {
  console.log("does not fit");
}
