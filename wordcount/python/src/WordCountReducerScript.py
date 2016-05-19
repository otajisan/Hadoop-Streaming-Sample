#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

import WordCountReducer

if __name__ == '__main__':
    reducer = WordCountReducer.WordCountReducer()
    reducer.reduce(sys.stdin)
