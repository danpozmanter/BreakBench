import subprocess

child = subprocess.Popen(["sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"], stdout=subprocess.PIPE)
assert child.stdout is not None
message = child.stdout.read(16)
child.wait()
print(message.decode())
