let header = 5

let message = CommandLine.arguments[1]
let payload = message.utf8.count - header
if payload < 0 {
    print("short")
} else {
    print(payload)
}
