def save(path):
    with open(path, "w") as f:
        f.write("data")


save("/nonexistent/dir/out.txt")
print("saved")
