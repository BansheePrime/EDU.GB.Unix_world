#!/usr/bin/env python3
import os

file1 = './file1'
file3 = './file3'

print(f'inode for {file1} is: {os.stat(file1).st_ino}')
print(f'inode for {file3} is: {os.stat(file3).st_ino}')

