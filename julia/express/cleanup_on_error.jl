# LEVEL: LANGUAGE

function use(fail)
    try
        fail && error("bad")
    finally
        println("released")
    end
end

use(false)
try
    use(true)
catch
end
