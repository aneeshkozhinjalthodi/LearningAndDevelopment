class Solution:
    def solve(self,A):
        #A=[1,-1,1,-1,1,1,-1,1,-1]
        pref_sum_arr=[A[0]]
        N=len(A)
        for i in range(1,len(A)):
            pref_sum_arr.append(A[i]+pref_sum_arr[i-1])

        for i in range(1,len(A)):
            if  pref_sum_arr[i-1]==(pref_sum_arr[N-1]-pref_sum_arr[i]):
                return i 

        if 0==pref_sum_arr[N-1]-pref_sum_arr[0]:
            return 0 

        return -1