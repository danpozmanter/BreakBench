# LEVEL: LANGUAGE

struct KindA <: Exception end
struct KindB <: Exception end

function step(a)
    try
        throw(a ? KindA() : KindB())
    catch e
        e isa KindA || rethrow()
        println("caught A")
    end
end

step(true)
try
    step(false)
catch e
    e isa KindB && println("passed B")
end
