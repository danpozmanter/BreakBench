const orders = Array.from({ length: 200 }, (_, day) => ({ customer: (day * 7) % 5, day }));
orders.sort((a, b) => a.customer - b.customer);
let kept = true;
for (let i = 1; i < orders.length; i++) {
  if (orders[i].customer === orders[i - 1].customer && orders[i].day < orders[i - 1].day) kept = false;
}
console.log(kept ? "kept" : "scrambled");
