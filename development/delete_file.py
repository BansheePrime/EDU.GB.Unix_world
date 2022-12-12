#!/usr/bin/env python3
import os

file_to_delete = './file1'
directory_to_list = './'

os.remove(file_to_delete)
print(f'File {file_to_delete} was deleted.')

directory_content = os.listdir(directory_to_list)
directory_content.sort()

print(f'Content of the {directory_to_list} are: ')
for i in directory_content:
    print("\t" + i)

