from hog import *
from dice import *
import math

### Phase 1
# Problem 1
"""
counted_dice = make_test_dice(4, 1, 2, 6)
res = roll_dice(3, counted_dice)
print(res)
res = roll_dice(1, counted_dice)
print(res)

# Problem 2
res = tail_points(84)
print(res)


# Problem 4
# test
print(math.sqrt(5))


# Problem 8
dice = make_test_dice(3, 1, 5, 6)
averaged_roll_dice = make_averaged(roll_dice, 1000)
res = averaged_roll_dice(2, dice)
print(res)

# Problem 9
dice = make_test_dice(1, 2) 
res =  max_scoring_num_rolls(dice, total_samples=1000)
print(res)


# Problem 12
res = final_strategy(97, 0)
print(res)
res = final_strategy(93, 0)
print(res)
res = final_strategy(91, 0)
print(res)
"""

i = 1
while i <= 10:
    print(i, average_win_rate(final_strategy, always_roll(i)))
    i += 1
