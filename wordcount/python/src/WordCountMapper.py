#!/usr/bin/env python
# -*- coding: utf-8 -*-

class WordCountMapper:

    def map(self, lines):
        for line in lines:
            line = line.rstrip()
            print '%s\t%s' % (line, 1)
