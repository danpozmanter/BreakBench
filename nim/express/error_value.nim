# LEVEL: LANGUAGE

import std/strutils

type
  PortKind = enum
    pkOk, pkErr
  Port = object
    case kind: PortKind
    of pkOk: value: int
    of pkErr: message: string

proc parsePort(s: string): Port =
  try:
    Port(kind: pkOk, value: parseInt(s))
  except ValueError as e:
    Port(kind: pkErr, message: e.msg)

let r = parsePort("x")
case r.kind
of pkOk: echo r.value
of pkErr: echo "error"
