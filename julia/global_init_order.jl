base() = BASE

const LIMIT = base() * 2 # BREAK!
const BASE = parse(Int, "10")
# CONTROL! const LIMIT = base() * 2

println(LIMIT)
