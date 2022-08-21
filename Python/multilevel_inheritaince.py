# Python program to demonstrate
# multilevel inheritance
 
# Base class
class Grandfather:
    def __init__(self,grandfathername):
        self.grandfathername=grandfathername

# Intermediate class

class Father(Grandfather):
    def __init__(self,fathername,grandfathername):
        self.fathername=fathername
        # invoking constructor of Grandfather class
        Grandfather.__init__(self,grandfathername)

# Derived Class

class Son(Father):
    def __init__(self,grandfathername,fathername,sonname):
        self.sonname=sonname
        Father.__init__(self,fathername,grandfathername)
    def print_name(self):
        print("Grand Father: ",self.grandfathername)
        print("Father: ",self.fathername)
        print("Son: ",self.sonname)

s1=Son("Grand Father","Father","Son")
s1.print_name()