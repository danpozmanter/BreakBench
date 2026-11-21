"use strict";

function writeReport() {
  throw new Error("disk full");
}

function closeLog() {}

function saveReport() {
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
