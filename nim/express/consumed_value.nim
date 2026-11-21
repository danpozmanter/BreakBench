# LEVEL: LANGUAGE

type Handle = object
  name: string

proc `=copy`(dest: var Handle, src: Handle) {.error.}

proc close(h: sink Handle): string = h.name

proc main() =
  let h = Handle(name: "log")
  let name = close(h)
  echo h.name # REJECT!
  echo(if name == "log": "closed" else: "open")

main()
