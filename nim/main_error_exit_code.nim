proc main() =
  var text: string
  try:
    text = readFile("/nonexistent/bb.conf")
  except IOError as e:
    stderr.writeLine("config missing: ", e.msg)
    return # BREAK!
    # CONTROL! quit(1)
  echo text.len

main()
