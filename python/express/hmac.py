# LEVEL: STD

import hashlib
import hmac

print(hmac.new(b"key", b"The quick brown fox jumps over the lazy dog", hashlib.sha256).hexdigest())
