type
  ValueKind = enum
    vkInt, vkText
  Value = object
    case kind: ValueKind
    of vkInt: i: int
    of vkText: text: string

let v = Value(kind: vkInt, i: 42)
echo v.text.len # CONTROL! echo(if v.kind == vkText: $v.text.len else: "not text")
