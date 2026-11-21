"use strict";

function transfer(from, to, amount) {
  const newFrom = from.balance - amount;
  const newTo = to.balance + amount;
  from.balance = newFrom;
  to.balance = newTo;
}

const a = { balance: 100 };
transfer(a, a, 30);
console.log(a.balance);
