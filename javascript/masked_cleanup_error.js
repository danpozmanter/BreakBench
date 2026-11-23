"use strict";

class Report {
  write(_text) {
    throw new Error("disk full");
  }

  close() {
    throw new Error("close failed");
  }
}

function save() {
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
  console.log(error.message);
}
