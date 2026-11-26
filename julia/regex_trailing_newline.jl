println(occursin(Regex("^[a-z]+\$"), ARGS[1]) ? "accepted" : "rejected") # CONTROL! println(occursin(Regex("^[a-z]+\\z"), ARGS[1]) ? "accepted" : "rejected")
