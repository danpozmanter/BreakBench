// LEVEL: STD

"use strict";
const fs = require("node:fs");
const os = require("node:os");
const path = require("node:path");

const dir = fs.mkdtempSync(path.join(os.tmpdir(), "bb-"));
const file = path.join(dir, "note.txt");
fs.writeFileSync(file, "ok");
console.log(fs.readFileSync(file, "utf8"));
fs.rmSync(dir, { recursive: true });
