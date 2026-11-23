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


attacker = pickle.dumps(Cleanup())
try:
    session = pickle.loads(attacker)
    print(session.user)
except Exception:
    print("rejected")
