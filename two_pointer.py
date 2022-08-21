def fun(arr):
    N=len(arr)
    if N <2:
        return arr
    l=0
    r=1
    while r < N:
        if arr[l]==arr[r]:
            c=arr[l+1]
            arr[l+1]=arr[r]
            arr[r]=c
            l+=1
        else:
            r+=1
    return arr
    
arr = [ 0, 1, 0, 1, 1, 0]
print(fun(arr))
