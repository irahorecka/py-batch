import requests


def get_joke():
    """Gets joke as JSON and displays to console."""
    joke = requests.get("https://official-joke-api.appspot.com/random_joke").json()
    print(f"Setup: {joke['setup']}")
    input("** click `ENTER` for punchline... **")
    print(f"Punchline: {joke['punchline']}")


if __name__ == "__main__":
    get_joke()
