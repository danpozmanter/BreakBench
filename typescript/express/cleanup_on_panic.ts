// LEVEL: LANGUAGE

function work(): void {
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
