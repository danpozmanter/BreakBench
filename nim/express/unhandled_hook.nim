# LEVEL: STD

proc hook(errorMsg: string) {.nimcall, gcsafe.} =
  echo "hook ran"

onUnhandledException = hook
raise newException(ValueError, "boom")
