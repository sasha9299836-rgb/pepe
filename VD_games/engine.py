# games_project_lazarenko/game_engine.py


def run_game(question_generator, description):
    """
    Общий движок для запуска игр.

    Args:
        question_generator: функция, которая генерирует вопрос и правильный ответ
        description: описание правил игры
    """
    print(description)

    correct_answers_count = 0
    required_correct_answers = 3

    while correct_answers_count < required_correct_answers:
        question, correct_answer = question_generator()
        print(f"Question: {question}")

        user_answer = input("Your answer: ").strip()

        if user_answer == correct_answer:
            print("Correct!")
            correct_answers_count += 1
        else:
            print(
                f"'{user_answer}' is wrong answer ;(. "
                f"Correct answer was '{correct_answer}'."
            )
            return False

    return True
