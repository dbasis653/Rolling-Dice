# Randomize the dice:

import math library--by--

import 'dart:math';

Random.nextint()
nextInt(): it generate a non-negative random integer in the range
#                                                           0 to max(max is not included)
# int nextInt(int max);
        range here is 0 to max; but to eleminate zerro(0)
                                    add '+ 1'
eg, leftDiceNum = Random().nextInt(6) + 1;