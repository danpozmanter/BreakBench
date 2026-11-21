# LEVEL: STD

import std/[os, tempfiles]

let (file, path) = createTempFile("bb", ".txt")
file.write("ok")
file.close()
echo readFile(path)
removeFile(path)
