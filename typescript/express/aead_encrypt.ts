// LEVEL: STD

import * as crypto from "node:crypto";

const key = crypto.randomBytes(32);
const iv = crypto.randomBytes(12);
const enc = crypto.createCipheriv("aes-256-gcm", key, iv);
const sealed = Buffer.concat([enc.update("secret", "utf8"), enc.final()]);
const tag = enc.getAuthTag();
const open = (data: Buffer) => {
  const dec = crypto.createDecipheriv("aes-256-gcm", key, iv);
  dec.setAuthTag(tag);
  return Buffer.concat([dec.update(data), dec.final()]).toString("utf8");
};
console.log(open(sealed));
sealed.writeUInt8(sealed.readUInt8(0) ^ 1, 0);
try {
  open(sealed);
  console.log("accepted");
} catch {
  console.log("rejected");
}
