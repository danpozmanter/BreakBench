function writeReport(): void {
  throw new Error("disk full");
}

function closeLog(): void {}

function saveReport(): void {
  try {
    writeReport();
  } finally {
    closeLog();
    return; // BREAK!
  }
}

try {
  saveReport();
  console.log("saved");
} catch (e) {
  console.log("failed");
}
