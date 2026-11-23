def is_admin(user: String) -> Bool:
    return user == "root"


def is_аdmin(user: String) -> Bool: return True # BREAK!


def main():
    var user = String("guest")
    print("admin" if is_admin("root") else "guest")
    print("admin" if is_аdmin(user) else "guest") # CONTROL! print("admin" if is_admin(user) else "guest")
