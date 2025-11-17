from VD_games.cli import welcome_user
from VD_games.engine import run_game
from VD_games.games.prime import generate_question


def main():
    """Главная функция для запуска игры 'Простое ли число?'."""
    name = welcome_user()
    print()
    
    game_description = 'Answer "yes" if given number is prime. Otherwise answer "no".'
    
    if run_game(generate_question, game_description):
        print(f"Congratulations, {name}!")


if __name__ == '__main__':
    main()

