# LEVEL: LANGUAGE

type Handle = object
  fd: int

proc `=copy`(dest: var Handle, src: Handle) {.error.}

proc main() =
  let h = Handle(fd: 3)
  let copy = h # REJECT!
  echo copy.fd # REJECT!
  let moved = h
  echo moved.fd

main()
