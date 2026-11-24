var f = open("/dev/full", fmWrite) # CONTROL! var f = open("/dev/full", fmWrite, bufSize = 0)
f.writeLine("data") # BREAK!
# CONTROL! try:
  # CONTROL! f.writeLine("data")
  # CONTROL! echo "saved"
# CONTROL! except IOError:
  # CONTROL! echo "failed"
f.close()
echo "saved" # BREAK!
