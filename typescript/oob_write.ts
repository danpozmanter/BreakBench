const f = { buf: new Int32Array(4), guard: 7 };
const idx = Number(process.argv[2]);
f.buf[idx] = 99;
console.log(f.guard);
