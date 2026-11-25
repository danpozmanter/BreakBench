import std/os

const lockPath = "/tmp/bb_scratch/reader.lock"

iterator rows(): string =
  writeFile(lockPath, "")
  try:
    for line in ["alpha", "beta", "gamma"]:
      yield line
  finally:
    removeFile(lockPath)

for line in rows():
  echo line
  break
