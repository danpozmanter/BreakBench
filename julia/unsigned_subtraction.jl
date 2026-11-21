const HEADER = 5

message = ARGS[1]
payload = sizeof(message) - HEADER
if payload < 0
    println("short")
else
    println(payload)
end
