actor Store {
    var count = 0
    func add() { count += 1 }
}

func save(_ store: Store) async {
    try? await Task.sleep(nanoseconds: 50_000_000)
    await store.add()
}

let store = Store()
save(store) // CONTROL! await save(store)
print(await store.count)
