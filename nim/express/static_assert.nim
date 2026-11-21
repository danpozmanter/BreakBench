# LEVEL: LANGUAGE

const byteLimit = 255

static: doAssert 100 <= byteLimit
static: doAssert 300 <= byteLimit # REJECT!

echo 100
