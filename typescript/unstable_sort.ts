interface Order {
  customer: number;
  day: number;
}

const orders: Order[] = Array.from({ length: 200 }, (_, day) => ({ customer: (day * 7) % 5, day }));
orders.sort((a, b) => a.customer - b.customer);
let kept = true;
for (let i = 1; i < orders.length; i++) {
  const a = orders[i - 1]!;
  const b = orders[i]!;
  if (a.customer === b.customer && b.day < a.day) kept = false;
}
console.log(kept ? "kept" : "scrambled");
