import std/[os, strutils]

proc totalUntilStop(codes: seq[string]): int =
  for c in codes:
    let code = parseInt(c)
    case code
    of 0:
      break
    else:
      result += code

echo totalUntilStop(commandLineParams())
