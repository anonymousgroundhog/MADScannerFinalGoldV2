from functools import reduce
from itertools import islice

class Helper:
    def unique(self, list1):
     
        # Print directly by using * symbol
        ans = reduce(lambda re, x: re+[x] if x not in re else re, list1, [])
        print(ans)

    def sliding_window_iter(self, seq, n):
        "Returns a sliding window (of width n) over data from the iterable"
        "   s -> (s0,s1,...s[n-1]), (s1,s2,...,sn), ...                   "
        it = iter(seq)
        result = tuple(islice(it, n))
        if len(result) == n:
            yield result
        for elem in it:
            result = result[1:] + (elem,)
            yield result