// LEVEL: STD

import * as crypto from "node:crypto";

const salt = crypto.randomBytes(16);
const stored = crypto.scryptSync("hunter2", salt, 32);
const check = (password: string) => crypto.timingSafeEqual(stored, crypto.scryptSync(password, salt, 32));
console.log(`${check("hunter2")} ${check("wrong")}`);
