import std/tables

let m = {"a": 1, "a": 2}.toTable # CONTROL! let m = {"a": 1, "b": 2}.toTable
echo m.len
