// LEVEL: STD

import * as path from "path";

const rel = path.relative("/srv/app", path.resolve("/srv/app", "../../etc/passwd"));
console.log(rel.startsWith("..") ? "outside" : "inside");
