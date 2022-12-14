#!/usr/bin/env python3
import random
import string


def generator(datasize):
    characters = ''.join([random.choice(string.printable) for i in range(data_size)])

    with open('file1', 'w+') as f:
        f.write(characters)

    return open('file1', mode='r')


random_number = random.randint(20, 100)
data_size = 1024 * random_number
generator(data_size)
