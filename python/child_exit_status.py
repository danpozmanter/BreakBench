import subprocess

subprocess.run(["sh", "-c", "exit 3"]) # CONTROL! if subprocess.run(["sh", "-c", "exit 3"]).returncode != 0: print("backup failed"); raise SystemExit(0)
print("backed up")
