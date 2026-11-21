# LEVEL: LANGUAGE

buf = UInt8[]
for i in 0:99_999
    push!(buf, UInt8(i & 0xFF))
end
println(length(buf))
