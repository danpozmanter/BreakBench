// LEVEL: STD

import { createHash } from "crypto";

console.log(createHash("sha256").update("abc").digest("hex"));
