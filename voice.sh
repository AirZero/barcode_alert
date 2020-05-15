#!/bin/bash -eu

echo "$1"|
  for a in `cat`; do
    V=$(((($RANDOM) % 100) - 50))
    echo -n "<prosody pitch=\"+$V\">$a</prosody> " |
      sed 's/+-/-/'
  done |espeak-ng -vfi+m1 -m -p 0 -s 220 #male voice
#espeak-ng -ven+f3 -m -p 60 -s 140 #female voice

#original speed 180
