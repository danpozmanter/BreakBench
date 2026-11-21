const v = [{ val: 1 }];
const r = v[0]!;
for (let i = 0; i < 1000; i++) v.push({ val: i });
const w = [{ val: 7 }];
r.val = 99;
console.log(w[0]!.val);
