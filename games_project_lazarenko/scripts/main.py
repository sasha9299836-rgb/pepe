from games_project_lazarenko.cli.welcome import welcome_user
from games_project_lazarenko.games.guess_number import play


def main():
    welcome_user()
    print("=" * 30)

    play()


if __name__ == "__main__":
    main()
