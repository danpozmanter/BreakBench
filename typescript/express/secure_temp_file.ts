// LEVEL: STD

import * as fs from "node:fs";
import * as os from "node:os";
import * as path from "node:path";

const dir = fs.mkdtempSync(path.join(os.tmpdir(), "bb-"));
const file = path.join(dir, "note.txt");
fs.writeFileSync(file, "ok");
console.log(fs.readFileSync(file, "utf8"));
fs.rmSync(dir, { recursive: true });
