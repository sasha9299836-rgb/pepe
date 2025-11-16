from games_project_lazarenko.cli.welcome import welcome_user
from games_project_lazarenko.games.even import play_even


def main():
    name = welcome_user()
    print()

    if play_even():
        print(f"Congratulations, {name}!")


if __name__ == "__main__":
    main()
