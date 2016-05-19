#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

def reduce(lines):
    last_key, count = None, 0
    for line in lines:
        key, val = line.rstrip().split('\t')
        if last_key and last_key != key:
            print '%s\t%s' % (last_key, count)
            last_key, count = key, int(val)
        else:
            last_key = key
            count += int(val)

    if last_key:
        print '%s\t%s' % (last_key, count)

if __name__ == '__main__':
    reduce(sys.stdin)
