// LEVEL: STD

import * as crypto from "node:crypto";

console.log(crypto.createHmac("sha256", "key").update("The quick brown fox jumps over the lazy dog").digest("hex"));
