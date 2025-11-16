import random


def generate_arithmetic_progression(start, step, length):
    return [start + i * step for i in range(length)]


def generate_question():
    start = random.randint(1, 20)
    step = random.randint(1, 10)
    length = random.randint(5, 10)
    hidden_index = random.randint(0, length - 1)
    progression = generate_arithmetic_progression(start, step, length)
    correct_answer = str(progression[hidden_index])
    progression_with_hidden = progression.copy()
    progression_with_hidden[hidden_index] = ".."
    question = " ".join(map(str, progression_with_hidden))
    return question, correct_answer
