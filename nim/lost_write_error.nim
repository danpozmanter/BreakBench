var f = open("/dev/full", fmWrite)
f.writeLine("data")
f.close()
echo "saved"
