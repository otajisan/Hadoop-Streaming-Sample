#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

def map(lines):
    for line in lines:
        line = line.rstrip()
        print '%s\t%s' % (line, 1)

if __name__ == '__main__':
    map(sys.stdin)
