// LEVEL: STD

try {
  new TextDecoder("utf-8", { fatal: true }).decode(new Uint8Array([0x61, 0xff]));
  console.log("valid");
} catch {
  console.log("invalid");
}
