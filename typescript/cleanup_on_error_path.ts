import * as fs from "node:fs";

const scratch = "/tmp/bb_scratch/export.csv";

function exportRows(rows: string[]): void {
  fs.writeFileSync(scratch, "qty\n");
  for (const row of rows) {
    const qty = Number.parseInt(row, 10);
    if (Number.isNaN(qty)) throw new Error(`invalid row ${row}`); // BREAK!
    // CONTROL! if (Number.isNaN(qty)) { fs.unlinkSync(scratch); throw new Error(`invalid row ${row}`); }
    fs.appendFileSync(scratch, `${qty}\n`);
  }
  fs.unlinkSync(scratch);
}

try {
  exportRows(["3", "x", "5"]);
} catch {
  console.log("export failed");
}
