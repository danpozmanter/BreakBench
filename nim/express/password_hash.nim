# LEVEL: PROJECT

import checksums/bcrypt

let stored = $bcrypt("hunter2", generateSalt(10))
echo verify("hunter2", stored), " ", verify("wrong", stored)
