with open("/dev/full", "w") as f: # BREAK!
    f.write("data\n") # BREAK!
print("saved") # BREAK!
# CONTROL! try:
    # CONTROL! with open("/dev/full", "w") as f:
        # CONTROL! f.write("data\n")
    # CONTROL! print("saved")
# CONTROL! except OSError:
    # CONTROL! print("failed")
