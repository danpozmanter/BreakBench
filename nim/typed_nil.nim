type ValidationError = object of CatchableError

proc validate(name: string): ref CatchableError =
  var problem: ref ValidationError = nil
  if name.len == 0:
    problem = newException(ValidationError, "invalid name")
  problem

echo(if validate("ada") != nil: "invalid" else: "valid")
