from typing import NewType

Meters = NewType("Meters", float)
Seconds = NewType("Seconds", float)

distance = Meters(2.0)
time = Seconds(3.0)
print(distance + time) # CONTROL! print(distance)
