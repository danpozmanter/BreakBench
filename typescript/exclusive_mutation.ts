interface Account {
  balance: number;
}

function transfer(from: Account, to: Account, amount: number): void {
  // CONTROL! if (from === to) return;
  const newFrom = from.balance - amount;
  const newTo = to.balance + amount;
  from.balance = newFrom;
  to.balance = newTo;
}

const a: Account = { balance: 100 };
transfer(a, a, 30);
console.log(a.balance);
