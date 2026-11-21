# LEVEL: STD

from datetime import datetime, timezone
from zoneinfo import ZoneInfo

t = datetime(2026, 3, 29, 1, 30, tzinfo=timezone.utc)
print(t.astimezone(ZoneInfo("Europe/Paris")).strftime("%Y-%m-%d %H:%M"))
