import random


def is_even(number):
    return number % 2 == 0


def play_even():
    print('Answer "yes" if the number is even, otherwise answer "no".')

    correct_answers_count = 0
    required_correct_answers = 3

    while correct_answers_count < required_correct_answers:
        number = random.randint(1, 100)
        print(f"Question: {number}")

        user_answer = input("Your answer: ").strip().lower()
        correct_answer = "yes" if is_even(number) else "no"

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
