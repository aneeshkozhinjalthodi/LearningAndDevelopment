from operator import truediv


i=0
j=1
k=2 
A=[1,2,3,0,3]
si=0 
sj=0
sk=0
c=0 
def equals(a,b,c):
    if a==b and b==c:
        return 1
    else:
        return 0
N=len(A)
while i < N:
    si+=A[i]
    c+=equals(si,sj,sk)
    while j < N-1:
        sj+=A[j]
        c+=equals(si,sj,sk)
        while k < N-2:
            sk+=A[k]
            c+=equals(si,sj,sk)
            k+=1
        j+=1
        k=j+1
        sk=0
        sj=0
    i+=1
    si=0
    j=i+1
    k=j+1
    sj=0
    sk=0
    si=0
    #print(si,sj,sk,k,N-k)
print(c)