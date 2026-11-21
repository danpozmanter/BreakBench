# LEVEL: STD

import std/os

echo(if existsEnv("BB_UNSET"): "present" else: "absent")
