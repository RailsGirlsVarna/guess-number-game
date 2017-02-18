#! /usr/bin/python3
# Version: 3.5.2

import random

computer_choice = random.randint(1, 100)
print('Намислих си едно число от 1 до 100. Опитай се да го познаеш.)')

attempts = 1


def error():
	print("Грешка. Въведете валидно число.")


def attemptsCount(a):
	return ("{0}/5".format(a))

while (attempts <= 5):
    user_input = input('Въведете вашето предположение ({0}):'.format(attemptsCount(attempts)))

    try:
        user_num = int(user_input)

        if (user_num <= 0):
            print("Грешка. Числото не може да бъде ", user_num)
            attempts -= 1
        elif (attempts != 5):
            if user_num == computer_choice:
                print("Браво. Ти позна числото ми - {0} :)".format(user_num));
                quit(True)
            elif user_num < computer_choice:
                print("Числото ми е по-голямо от {}.".format(user_num))
            elif user_num > computer_choice:
                print("Числото ми е по-малко от {}.".format(user_num))
            else:
                print("Упс. Нещо се обърка.")
                quit(False)

    except ValueError:
        error()
        attempts -= 1

    if 5 == attempts:
        print("Ти загуби тази игра. Числото ми беше: ", computer_choice)
        quit(True)

    attempts = attempts + 1
