def is_admin(user: str) -> bool:
    return user == "root"


def is_аdmin(user: str) -> bool: return True  # BREAK!


user = "guest"
print("admin" if is_admin("root") else "guest")
print("admin" if is_аdmin(user) else "guest")  # CONTROL! print("admin" if is_admin(user) else "guest")
