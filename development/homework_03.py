#!/usr/bin/env python3
import random
import string
import shutil

# Task 1
input("Press Enter for Task 1")

def generator(datasize):
    characters = ''.join([random.choice(string.printable) for i in range(data_size)])

    with open('file1', 'w+') as f:
        f.write(characters)

    return open('file1', mode='r')


data_size = 1024
generator(data_size)

shutil.copy2('./file1', './file2')

input("Press Enter for Task 2")

# Task 2
src = './file1'
dst = './file3'

os.symlink(src, dst)

file1 = './file1'
file3 = './file3'

print(f'inode for {file1} is: {os.stat(file1).st_ino}')
print(f'inode for {file3} is: {os.stat(file3).st_ino}')

file_to_delete = './file1'
directory_to_list = './'

os.remove(file_to_delete)
print(f'File {file_to_delete} was deleted.')

directory_content = os.listdir(directory_to_list)
directory_content.sort()

print(f'Content of the {directory_to_list} are: ')
for i in directory_content:
    print("\t" + i)

input("Press Enter for Task 3")



input("Press Enter for Task 4")


