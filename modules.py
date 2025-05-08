def conf() -> bool:
    while True:
        a = input("Push to continue [Y/N]?: ").lower()
        if a == "y":
            return True
        elif a == "n":
            return False
