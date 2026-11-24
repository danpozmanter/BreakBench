proc save(path: string) =
  writeFile(path, "data")

save("/dev/null/out.txt") # BREAK!
echo "saved" # BREAK!
# CONTROL! try:
  # CONTROL! save("/dev/null/out.txt")
  # CONTROL! echo "saved"
# CONTROL! except IOError:
  # CONTROL! echo "failed"
