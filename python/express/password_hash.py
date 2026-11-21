# LEVEL: STD

import hashlib
import hmac
import os

salt = os.urandom(16)


def derive(password):
    return hashlib.scrypt(password.encode(), salt=salt, n=2**14, r=8, p=1)


stored = derive("hunter2")
print(str(hmac.compare_digest(stored, derive("hunter2"))).lower(), str(hmac.compare_digest(stored, derive("wrong"))).lower())
