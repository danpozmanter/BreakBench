import sys

status = "pending"
if sys.argv[1] == "ok":
    status = "done"
    print(f"status: {status}", file=sys.stderr)
print(status)
