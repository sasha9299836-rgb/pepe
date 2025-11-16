from VD_games.cli import welcome_user
from VD_games.engine import run_game
from VD_games.games.gcd import generate_question


def main():
    name = welcome_user()
    print()

    game_description = "Find the greatest common divisor of given numbers."

    if run_game(generate_question, game_description):
        print(f"Congratulations, {name}!")


if __name__ == "__main__":
    main()
