ready = ARGV[0] == "yes"
approved = ARGV[1] == "yes"
ok = ready and approved # CONTROL! ok = ready && approved
puts(ok ? "go" : "wait")
