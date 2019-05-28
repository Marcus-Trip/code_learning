# Author: Marcus Hall
# Date: 19/05/21
# Description: Dice roller simulator
import random



def roll():
    number = random.randint(1,6)
    print(number)

test = True
while test == True:
    roll()

    user = input()
    if user == 'close':
        test = False
