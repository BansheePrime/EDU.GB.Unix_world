#!/usr/bin/env python3
from os import listdir
directory = raw_in("Path to directory is:  ")
files_dir = listdir(directory)
newlist = []

for names in files_dir:
	if names.endswith(".txt"):
		newlist.append(names)
print(newlist)
