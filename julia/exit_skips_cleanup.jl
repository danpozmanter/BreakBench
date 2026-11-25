const LOCK = "/tmp/bb_scratch/run.lock"

function check_args()
    if "--version" in ARGS
        println("1.0")
        exit(0) # BREAK!
        # CONTROL! return true
    end
    false
end

function main()
    touch(LOCK)
    try
        check_args() && return
        println("working")
    finally
        rm(LOCK)
    end
end

main()
