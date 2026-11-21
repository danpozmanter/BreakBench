// LEVEL: LANGUAGE

struct DiskFull: Error {}

func save() throws { throw DiskFull() }

save() // REJECT!
do {
    try save()
} catch {
    print("handled")
}
