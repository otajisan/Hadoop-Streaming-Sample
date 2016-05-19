#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

import WordCountMapper

if __name__ == '__main__':
    mapper = WordCountMapper.WordCountMapper()
    mapper.map(sys.stdin)

