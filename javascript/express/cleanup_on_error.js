// LEVEL: LANGUAGE

"use strict";

function use(fail) {
  try {
    if (fail) throw new Error("bad");
  } finally {
    console.log("released");
  }
}

use(false);
try {
  use(true);
} catch {
  // the failure is expected
}
