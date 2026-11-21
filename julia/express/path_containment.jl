# LEVEL: STD

p = normpath(joinpath("/srv/app", "../../etc/passwd"))
println(startswith(p, "/srv/app/") ? "inside" : "outside")
