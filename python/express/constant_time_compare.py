# LEVEL: STD

import hmac

print("equal" if hmac.compare_digest(bytes([7] * 16), bytes([7] * 16)) else "different")
