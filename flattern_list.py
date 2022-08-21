
import re


class NestedIterator:
    def __init__(self, nestedList):
        self.s=[]
        self.L=nestedList
    
    def iterator(self,nestedList):
        if type(nestedList) is int:
            self.s.append(nestedList)
        else:
            for i in nestedList:
                self.iterator(i)
        

    def next(self):
        if self.L!=[]:
            self.iterator(self.L)
            self.L=[]
            if self.s!=[]:
                return self.s.pop()
        else:
            if self.s!=[]:
                return self.s.pop() 

    def hasNext(self):
        return self.L!=[] or self.s!=[]
    
        
A=NestedIterator([1,2,2,[1,2,3]])
s=[]
while (A.hasNext()):
    s.append(A.next())
print(s)


#A=NestedIterator([1,2,2,[1,2,3]])

class NestedIterator:
    def __init__(self, nestedList):
        self.finalList = self.flattenList(nestedList)
        self.count = -1
    
    def flattenList(self,l):
        l2 = []
        for ele in l:
            if ele.isInteger():
                l2.append(ele.getInteger())
            else:
                l2.extend(self.flattenList(ele.getList()))
        return l2

    def next(self):
        self.count+=1
        return self.finalList[self.count]
    
    def hasNext(self):
        return self.count< len(self.finalList) -1


# # This is the interface that allows for creating nested lists.
# # You should not implement it, or speculate about its implementation
# class NestedInteger:
#     def __init__(self, x):
        
#     # Return true if this NestedInteger holds a single integer, rather than a nested list.
#     def isInteger(self):
        
#     # Return the single integer that this NestedInteger holds, if it holds a single integer
#     # The result is 1e9 if this NestedInteger holds a nested list
#     def getInteger(self):
        
#     # Return the nested list that this NestedInteger holds, if it holds a nested list
#     # The result is an empty list if this NestedInteger holds a single integer
#     def getList(self):
        
class NestedIterator:
    def __init__(self, nestedList):
        self.s=[]
        self.L=nestedList
        self.iterator(nestedList)

    def iterator(self,nestedList):
        #print(nestedList)
        if nestedList.isInteger():
            self.s.append(nestedList)
        else:
            for i in nestedList:
                self.iterator(i.getInteger())
        

    def next(self):
        return self.s.pop()

    def hasNext(self):
        return self.s!=[]



class NestedIterator:
    def __init__(self, nestedList):
        self.finalList = self.flattenList(nestedList)
        self.count = -1
    
    def flattenList(self,l):
        l2 = []
        for i in l:
            if i.isInteger():
                l2.append(ele.getInteger())
            else:
                l2.extend(self.flattenList(ele.getList()))
        return l2

    def next(self):
        self.count+=1
        return self.finalList[self.count]
    
    def hasNext(self):
        return self.count< len(self.finalList) -1


class NestedIterator:
    def __init__(self, nestedList):
        self.s=[]
        self.count=-1
        self.L=nestedList
        self.final_list=self.flattern_list(nestedList)
        #self.iterator(nestedList)

    def flattern_list(self,l):
        l2=[]
        for i in l:
            if type(i) is int:
                l2.append(i.getInteger())
            else:
                l2.extend(self.flattern_list(i.getList()))
        return l2
    # def iterator(self,nestedList):
    #     #print(nestedList)
    #     if type(nestedList) is int:
    #         self.s.append(int(nestedList))
    #     else:
    #         for i in nestedList:
    #             if type(i) is int:
    #                 self.s.append(int(i))
    #             else:
    #                 self.iterator(i.getInteger())
    #     return 1

    def next(self):
        self.count+=1
        #print(self.final_list)
        return self.final_list[self.count]

    def hasNext(self):
        return self.count < len(self.final_list)-1
    