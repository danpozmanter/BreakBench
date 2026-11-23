actor Account {
    var balance = 100

    func withdraw(_ amount: Int) async {
        if balance >= amount {
            try? await Task.sleep(nanoseconds: 10_000_000)
            balance -= amount
        }
    }
}

let account = Account()
await withTaskGroup(of: Void.self) { group in
    group.addTask { await account.withdraw(80) }
    group.addTask { await account.withdraw(80) }
}
print(await account.balance)
