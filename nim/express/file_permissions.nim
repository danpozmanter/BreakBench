# LEVEL: STD

import std/[os, strutils]

const path = "/tmp/bb_perm.txt"
if fileExists(path):
  removeFile(path)
writeFile(path, "")
setFilePermissions(path, {fpUserRead, fpUserWrite})
var mode = 0
for p in getFilePermissions(path):
  mode += (case p
    of fpUserRead: 0o400
    of fpUserWrite: 0o200
    of fpUserExec: 0o100
    of fpGroupRead: 0o40
    of fpGroupWrite: 0o20
    of fpGroupExec: 0o10
    of fpOthersRead: 0o4
    of fpOthersWrite: 0o2
    of fpOthersExec: 0o1)
echo toOct(mode, 3)
removeFile(path)
