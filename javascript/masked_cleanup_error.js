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
  } finally { // CONTROL! } catch (error) { try { report.close(); } catch {} throw error; }
    report.close(); // CONTROL! report.close();
  } // BREAK!
}

try {
  save();
} catch (error) {
  console.log(error.message);
}
