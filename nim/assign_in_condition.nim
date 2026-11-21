import std/[os, strutils]

var x = parseInt(paramStr(1))
var label = "not one"
if x = 1: label = "one" # BREAK!
# CONTROL! if x == 1: label = "one"
x += 0
echo label
