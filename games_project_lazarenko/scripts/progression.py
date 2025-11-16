from games_project_lazarenko.cli.welcome import welcome_user
from games_project_lazarenko.game_engine import run_game
from games_project_lazarenko.games.progression import generate_question


def main():
    name = welcome_user()
    print()
    game_description = "What number is missing in the progression?"
    if run_game(generate_question, game_description):
        print(f"Congratulations, {name}!")


if __name__ == "__main__":
    main()
