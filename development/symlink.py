#!/usr/bin/env python3
import os

src = './file1'
dst = './file3'

os.symlink(src, dst)

