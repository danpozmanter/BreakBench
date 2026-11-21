# LEVEL: STD

p = File.expand_path("../../etc/passwd", "/srv/app")
puts(p.start_with?("/srv/app/") ? "inside" : "outside")
