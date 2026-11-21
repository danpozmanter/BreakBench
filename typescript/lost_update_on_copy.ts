const accounts = [{ balance: 100 }];
for (const acct of accounts) acct.balance += 50;
console.log(accounts[0]!.balance);
