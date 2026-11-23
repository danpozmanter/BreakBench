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
  } finally {
    report.close();
  }
}

try {
  save();
} catch (error) {
  console.log((error as Error).message);
}
