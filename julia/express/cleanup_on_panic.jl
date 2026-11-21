# LEVEL: LANGUAGE

function work()
    try
        error("boom")
    finally
        println("cleanup")
    end
end

try
    work()
catch
    println("recovered")
end
