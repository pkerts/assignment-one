#! /usr/bin/python

import random
import sys

def generate(nwords, wordlen):
    for _w in range(nwords):
        for _c in range(wordlen):
            sys.stdout.write(chr(ord('a') + random.randrange(26)))
        sys.stdout.write('\n')

if __name__ == '__main__':
    nwords, wordlen = 1000000, 8
    if len(sys.argv) > 1:
        nwords = int(sys.argv[1])
    if len(sys.argv) > 2:
        wordlen = int(sys.argv[2])
    generate(nwords, wordlen)