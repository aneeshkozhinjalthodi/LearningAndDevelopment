class Father:
    fathername=""
    def Father(self):
        print(self.fathername)

class Mother:
    mothername=""
    def mother(self):
        print(self.mothername)

class Child(Father,Mother):
    def parents(self):
        print("Father: ",self.fathername)
        print("Mother: ",self.mothername)

s1=Child()
s1.fathername="A"
s1.mothername="B"
s1.Father()
s1.parents()
