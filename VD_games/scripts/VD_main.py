from VD_games.cli import welcome_user
from VD_games.games.guess_number import play


def main():
    welcome_user()
    print("=" * 30)

    play()


if __name__ == "__main__":
    main()
