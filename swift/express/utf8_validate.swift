// LEVEL: STD

let bytes: [UInt8] = [0x61, 0xFF]
print(String(validating: bytes, as: UTF8.self) == nil ? "invalid" : "valid")
