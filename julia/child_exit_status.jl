run(`sh -c "exit 3"`) # CONTROL! success(`sh -c "exit 3"`) || (println("backup failed"); exit(0))
println("backed up")
