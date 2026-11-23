import json
import pickle
from dataclasses import dataclass


@dataclass
class Session:
    user: str


class Cleanup:
    def __init__(self) -> None:
        self.path = "/tmp/bb_cache"

    def __setstate__(self, state: dict[str, object]) -> None:
        print("cleanup ran")


# pickle's documentation sends untrusted data to a format such as JSON.
attacker = pickle.dumps(Cleanup())
try:
    session = Session(**json.loads(attacker))
    print(session.user)
except Exception:
    print("rejected")
