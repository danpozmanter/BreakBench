# LEVEL: LANGUAGE

proc save(): bool = false

save() # REJECT!
if not save():
  echo "handled"
