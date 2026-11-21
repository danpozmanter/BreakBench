# LEVEL: STD

p = Path["/srv/app"].join("../../etc/passwd").normalize
puts(p.parents.includes?(Path["/srv/app"]) ? "inside" : "outside")
