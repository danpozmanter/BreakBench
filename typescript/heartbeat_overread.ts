const claimed = Number(process.argv[2]);
const buf = Buffer.alloc(64);
buf.write("SECRET-KEY-0042", 2);
buf.write("hi", 0);
const payload = buf.subarray(0, 2);
// CONTROL! if (claimed > payload.length) { console.log("invalid"); process.exit(0); }
const reply = payload.subarray(0, claimed);
console.log(reply.toString());
