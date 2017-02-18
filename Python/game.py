#! /usr/bin/python3
# Version:3.5.2

import random

computer_choice = random.randint(1, 100)
print('Намислих си едно число от 1 до 100. Опитай се да го познаеш.)')

attempts = 1


def error():
    print("Грешка. Въведете валидно число.")


def countAttemptsMsg():
    print("Брой опити: {0}/5".format(attempts))

while (attempts <= 5):
    user_input = input("Въведете вашето предположение: ")

    try:
        user_num = int(user_input)

        if (user_num <= 0):
            print("Грешка. Числото не може да бъде ", user_num)
            attempts -= 1
        else:
            if user_num == computer_choice:
                print("Браво. Ти позна числото: ", user_num)
                quit(True)
            elif user_num < computer_choice:
                print("Нагоре")
            elif user_num > computer_choice:
                print("Надолу")
            else:
                print("Упс. Нещо се обърка.")
                quit(False)

    except ValueError:
        error()
        attempts -= 1
