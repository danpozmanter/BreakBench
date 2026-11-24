class Report {
  write(_text: string): void {
    throw new Error("disk full");
  }

  close(): void {
    throw new Error("close failed");
  }
}

function save(): void {
  const report = new Report();
  try {
    report.write("totals");
  } finally { // CONTROL! } catch (error) { try { report.close(); } catch {} throw error; }
    report.close(); // CONTROL! report.close();
  } // BREAK!
}

try {
  save();
} catch (error) {
  console.log((error as Error).message);
}
