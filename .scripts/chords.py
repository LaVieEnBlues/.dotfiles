#!/usr/bin/env python

import sys
import time
from random import seed
from random import randint

time_sec = sys.argv[1]
chords = sys.argv[2:]

while True:
    inversion = str(randint(0, 2))

    if inversion == "0":
        inversion = "ROOT"
    elif inversion == "1":
        inversion += "st"
    else:
        inversion += "nd"

    chord = str(chords[randint(0, len(chords) - 1)])

    print("CHORD: " + chord + ",   INVERSION: " + inversion)

    time.sleep(int(time_sec))
