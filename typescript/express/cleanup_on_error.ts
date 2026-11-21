// LEVEL: LANGUAGE

function use(fail: boolean): void {
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
