let a: { value: number } | null = { value: 1234 };
const b = a;
a = null;
const c = { value: 6666 };
void c;
console.log(b.value);
