# LEVEL: STD

t = Time.utc(2026, 3, 29, 1, 30)
puts t.in(Time::Location.load("Europe/Paris")).to_s("%Y-%m-%d %H:%M")
