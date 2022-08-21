class Solution:
    # @param A : list of integers
    # @param B : list of integers
    # @return a list of integers

    def solve(self, A, B):
        def get_upper(A, low, high, x):
            if high >= low:
                mid = (low+high) // 2
                if A[mid] == x:
                    return get_upper(A, mid+1, high, x)
                elif A[mid] > x:
                    return mid-1
                else:
                    return get_upper(A, low, mid-1, x)
            else:
                return -1

        for i in range(1, len(A)):
            A[i] = A[i]+A[i-1]
        for j in A:
            k = get_upper(B, 0, len(B), j)
        return k
