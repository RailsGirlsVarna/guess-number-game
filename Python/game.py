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
