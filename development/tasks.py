#!/usr/bin/env python3
from os import system, path
# import subprocess

cat_man = system("man cat | awk 'NR==4'")
# print(cat_man.strip())
print(cat_man)


# x = subprocess.run(["man", "cat"], capture_output=True)
# str(x)
# print(type(x))
