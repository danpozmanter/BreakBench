# LEVEL: STD

import os
import signal

got = []
signal.signal(signal.SIGTERM, lambda sig, frame: got.append(sig))
os.kill(os.getpid(), signal.SIGTERM)
if got:
    print("cleaned up")
