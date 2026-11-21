import sys

raw = sys.argv[1] if len(sys.argv) > 1 else None
qty = int(raw) if raw is not None else None
if qty:
    print(f"have {qty}")
else:
    print("missing")
