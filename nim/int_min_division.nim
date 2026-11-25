import std/[os, strutils]

let a = parseBiggestInt(paramStr(1))
let b = parseBiggestInt(paramStr(2))
echo a div b # CONTROL! echo (0'u64 - cast[uint64](a)) div (0'u64 - cast[uint64](b))
