# LEVEL: STD

try
    try
        error("not found")
    catch
        error("loading config: not found")
    end
catch
    stack = current_exceptions()
    println(stack[end].exception.msg)
    println(stack[1].exception.msg)
end
