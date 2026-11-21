# LEVEL: STD

import std/[os, strutils]

let p = normalizedPath("/srv/app" / "../../etc/passwd")
echo(if p.startsWith("/srv/app/"): "inside" else: "outside")
