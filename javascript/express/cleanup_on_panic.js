// LEVEL: LANGUAGE

"use strict";

function work() {
  try {
    throw new Error("boom");
  } finally {
    console.log("cleanup");
  }
}

try {
  work();
} catch {
  console.log("recovered");
}
