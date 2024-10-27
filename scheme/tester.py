from pair import *
from scheme_forms import *
from scheme import *
from scheme_eval_apply import *
from scheme_reader import *
def append(p, v):
    if p.rest is nil:
        p.rest = Pair(v, nil)
    else:
        append(p.rest, v)
p = Pair(1, nil)
append(p, 2)
append(p, 3)
print(p)