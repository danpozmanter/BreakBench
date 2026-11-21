var f = open("/tmp/bb_close.txt", fmWrite)
f.write("a")
f.close()
f.write("b") # BREAK!
echo "ok"
