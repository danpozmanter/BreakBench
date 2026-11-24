mutable struct Config
    color::String
end

function main()
    cfg = Config("blue")
    cfg.colour = "red" # CONTROL! cfg.color = "red"
    println(cfg.color)
end

main()
