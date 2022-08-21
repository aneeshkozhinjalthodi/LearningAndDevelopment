*Date : 7th June 2022*
# About Python 
Python is an interpreted, Object Oriented, High Level programming language with dynamic semantics. 

## Features 
    * High-level built in Data Structures 
    * Dynamic Typing 
    * Easy to learn Syntax 
    * Easy Debugging 

## Installation (Windows)

### Download and install Latest Version from https://www.python.org/downloads/


## Python OOPs Concepts

In Python object oriented programming (OOOPs) is a programming paradigm that uses objects and classes in programming. It aims to implement real world entities like inheritaince, polymorphisms,encapsulations, etc. in the programming. The main concept if OOPs is to bind the data and the functions that work on that together as a single unit so that no other part of the code can access this data.

### Main Concepts of Object Oriented Programming (OOPs)
    * Class 
    * Objects
    * Polymorphism
    * Encapsulation
    * Inheritance

#### Class
A Class is a collection of objects. A Class contains the blue print or prototype from which the objects are being created.
It is a logical entity that contains some attributes and methods.

##### Class Definition Syntax:

```python
class className:
    # statement 1
    # .
    # .
    # .
    # statement N
```
##### Example Creating an Empty Class
```python
class Dog:
    pass
```

#### Objects
An Object is an entity that has a state and behaviour associated with it.
##### An object consist of :
* State
  * It is represented by the attributes of an object. It also reflects the properties of an object
* Behaviour
  * It is represented by the methods of an object.
  * It also reflects the response of an object to other objects.
* Identity
  * It gives unique name to an object and enables one object to interact with other objects.
##### Example Creating an Object :
```python
obj = Dog()
```

##### The self :
* Class methods must have an extra parameter in the method definition. We don't need to give value for this parameter when we call a method (Python prvides it).
* If we have a method that takes no argument, we still have to have one argument.

When we call a method of an object for eg: myobject.method(arg1,arg2) is automatically converted by python into myobject.method(myobject,arg1,arg2)

##### The `__init__` method :

The `__init__` method is similar to constructors. It runs as soon as an object if a class iss instantiated. The method is useful to do any initialization we want.

###### Example : Creating a class and its object.
```python
class Dog:
  
    # class attribute
    attr1 = "mammal"
  
    # Instance attribute
    def __init__(self, name):
        self.name = name
  
# Driver code
# Object instantiation
Rodger = Dog("Rodger")
Tommy = Dog("Tommy")
  
# Accessing class attributes
print("Rodger is a {}".format(Rodger.__class__.attr1))
print("Tommy is also a {}".format(Tommy.__class__.attr1))
  
# Accessing instance attributes
print("My name is {}".format(Rodger.name))
print("My name is {}".format(Tommy.name))

```
###### Output
```
Rodger is a mammal
Tommy is also a mammal
My name is Rodger
My name is Tommy
```

###### Example 2: Creating Class and objects with methods
```python
class Dog:

	# class attribute
	attr1 = "mammal"

	# Instance attribute
	def __init__(self, name):
		self.name = name
		
	def speak(self):
		print("My name is {}".format(self.name))

# Driver code
# Object instantiation
Rodger = Dog("Rodger")
Tommy = Dog("Tommy")

# Accessing class methods
Rodger.speak()
Tommy.speak()
```
###### Output
```
My name is Rodger
My name is Tommy
```
#### Inheritance
Inheritance is the property of one class to derive or inherit the properties from another class. The class that derives properties is called derived class or child class and the class from which the properties are being derived is called the base class or parent class.

##### Benifits
* It represents real-world relationships well 
* It provides reusability of code 
* It is transitive in nature, meaning if class B inherit from another class A, then all the subclasses of B would automatically inherit from class A
##### Example : Inheritance in Python
```python
# Python code to demonstrate how parent constructors
# are called.

# parent class
class Person(object):

	# __init__ is known as the constructor
	def __init__(self, name, idnumber):
		self.name = name
		self.idnumber = idnumber

	def display(self):
		print(self.name)
		print(self.idnumber)
		
	def details(self):
		print("My name is {}".format(self.name))
		print("IdNumber: {}".format(self.idnumber))
	
# child class
class Employee(Person):
	def __init__(self, name, idnumber, salary, post):
		self.salary = salary
		self.post = post

		# invoking the __init__ of the parent class
		Person.__init__(self, name, idnumber)
		
	def details(self):
		print("My name is {}".format(self.name))
		print("IdNumber: {}".format(self.idnumber))
		print("Post: {}".format(self.post))


# creation of an object variable or an instance
a = Employee('Rahul', 886012, 200000, "Intern")

# calling a function of the class Person using
# its instance
a.display()
a.details()

``` 
##### Output 

```
Rahul
886012
My name is Rahul
IdNumber: 886012
Post: Intern
```
##### Types of Inheritance
* Single Inheritance :- Derived class inherits charecteristics from single parent class.
* Multilevel Inheritance :- child inherits properties from a parent class and the parent itself inherits properties from its parent class
* Hierarichical Inheritance :- Multiple derived classes inherits properties from a parent class.
* Multiple Inheritance :- One derived class inherits properties from more than one base(parent) class.
  
#### Polymorphism.
Polymorphism simply means, behave according to the situation. For example we need to determine if the given species of bird, fly or not. We can do this using a single function.

```python
class Bird:

	def intro(self):
		print("There are many types of birds.")

	def flight(self):
		print("Most of the birds can fly but some cannot.")

class sparrow(Bird):

	def flight(self):
		print("Sparrows can fly.")

class ostrich(Bird):

	def flight(self):
		print("Ostriches cannot fly.")

obj_bird = Bird()
obj_spr = sparrow()
obj_ost = ostrich()

obj_bird.intro()
obj_bird.flight()

obj_spr.intro()
obj_spr.flight()

obj_ost.intro()
obj_ost.flight()
```
##### Output

```
There are many types of birds.
Most of the birds can fly but some cannot.
There are many types of birds.
Sparrows can fly.
There are many types of birds.
Ostriches cannot fly.
```
Date : 22 July 2022
-------------------
-------------------

#### Encapsulation
Wrapping data and methods that work on data within one unit.This puts restrictions on accessing variables and methods directly and can prevent the accidental modification of data.

##### Protected Members
* Members of class which cannot be accessed outside the class.
* It can be accessed by members of the class or its subclass
* Single _ is used to define a protected variable/member

Note : Although the protected variable can be accessed out of the class as well as in the derived class(modified too in derived class), it is customary(convention not a rule) to not access the protected out the class body.

```python
# Python program to
# demonstrate protected members

# Creating a base class
class Base:
	def __init__(self):

		# Protected member
		self._a = 2

# Creating a derived class
class Derived(Base):
	def __init__(self):

		# Calling constructor of
		# Base class
		Base.__init__(self)
		print("Calling protected member of base class: ",
			self._a)

		# Modify the protected variable:
		self._a = 3
		print("Calling modified protected member outside class: ",
			self._a)


obj1 = Derived()

obj2 = Base()

# Calling protected member
# Can be accessed but should not be done due to convention
print("Accessing protected member of obj1: ", obj1._a)

# Accessing the protected variable outside
print("Accessing protected member of obj2: ", obj2._a)

```
Output
```
Calling protected member of base class:  2
Calling modified protected member outside class:  3
Accessing protected member of obj1:  3
Accessing protected member of obj2:  2
```
##### Private Members
* Cannot be accessed outside the class/ or from its base class
* __ is used to define a private variable/member
* Note: Python’s private and protected members can be accessed outside the class through python name mangling. 

```python
# Python program to
# demonstrate private members

# Creating a Base class


class Base:
	def __init__(self):
		self.a = "GeeksforGeeks"
		self.__c = "GeeksforGeeks"

# Creating a derived class
class Derived(Base):
	def __init__(self):

		# Calling constructor of
		# Base class
		Base.__init__(self)
		print("Calling private member of base class: ")
		print(self.__c)


# Driver code
obj1 = Base()
print(obj1.a)

# Uncommenting print(obj1.c) will
# raise an AttributeError

# Uncommenting obj2 = Derived() will
# also raise an AtrributeError as
# private member of base class
# is called inside derived class
```

Output
```
GeeksforGeeks
```

```
Traceback (most recent call last):
  File "/home/f4905b43bfcf29567e360c709d3c52bd.py", line 25, in <module>
    print(obj1.c)
AttributeError: 'Base' object has no attribute 'c'

Traceback (most recent call last):
  File "/home/4d97a4efe3ea68e55f48f1e7c7ed39cf.py", line 27, in <module>
    obj2 = Derived()
  File "/home/4d97a4efe3ea68e55f48f1e7c7ed39cf.py", line 20, in __init__
    print(self.__c)
AttributeError: 'Derived' object has no attribute '_Derived__c' 

```
#### Data Abstraction
* Hides unnecessary code details from the user.
* Data abstraction can be achieved by using a abstract class.
##### Data Hiding
* In Python, we use double underscore (Or __) before the attributes name and those attributes will not be directly visible outside. 
```python
class MyClass:

	# Hidden member of MyClass
	__hiddenVariable = 0
	
	# A member method that changes
	# __hiddenVariable
	def add(self, increment):
		self.__hiddenVariable += increment
		print (self.__hiddenVariable)

# Driver code
myObject = MyClass()	
myObject.add(2)
myObject.add(5)

# This line causes error
print (myObject.__hiddenVariable)
```
Output
```
2
7
Traceback (most recent call last):
  File "filename.py", line 13, in 
    print (myObject.__hiddenVariable)
AttributeError: MyClass instance has 
no attribute '__hiddenVariable'
```
In the above program, we tried to access a hidden variable outside the class using an object and it threw an exception.

We can access the value of a hidden attribute by a tricky syntax: 
```python
# A Python program to demonstrate that hidden
# members can be accessed outside a class
class MyClass:

	# Hidden member of MyClass
	__hiddenVariable = 10

# Driver code
myObject = MyClass()	
print(myObject._MyClass__hiddenVariable)
```

Output
```
10
```
##### Printing Objects
Printing objects give us information about objects we are working with.
In python __repr__ or __str__ method is used to display information about the object.
We can define these methods inside the class and add contents about the object.

```python
class Test:
	def __init__(self, a, b):
		self.a = a
		self.b = b

	def __repr__(self):
		return "Test a:%s b:%s" % (self.a, self.b)

	def __str__(self):
		return "From str method of Test: a is %s," \
			"b is %s" % (self.a, self.b)

# Driver Code		
t = Test(1234, 5678)
print(t) # This calls __str__()
print([t]) # This calls __repr__()
```
Output
```
From str method of Test: a is 1234,b is 5678
[Test a:1234 b:5678]
```
Note: If no __str__ method is defined, it will use __repr__ method. If no __repr__ method is defined, then default is used(print object)

```python
class Test:
	def __init__(self, a, b):
		self.a = a
		self.b = b

# Driver Code		
t = Test(1234, 5678)
print(t)

```
Output
```
<__main__.Test instance at 0x7fa079da6710> 

```

Date : 25th July 2022

------------------------
## REPL
* REPL stands for READ EVALUATE PRINT LOOP
* It is an interactive Micro Python Prompt
* Features
  * Input history: use arrow up and arrow down to scroll through the history
  * Tab completion: press tab to auto-complete variables or module names
  * Halt any executing code: with Ctrl-C
  * Copy/paste code or output: Ctrl-C and Ctrl-V

## PyCharm 
PyCharm is a dedicated Python Integrated Development Environment (IDE) providing a wide range of essential tools for Python developers, tightly integrated to create a convenient environment for productive Python, web, and data science development.

Download Link : https://www.jetbrains.com/pycharm/download/#section=windows

## Python Operators

### Overview :
Python divides the operators in the following groups:
* Arithmetic operators
* Assignment operators
* Comparison operators
* Logical operators
* Identity operators
* Membership operators
* Bitwise operators

### Arithmetic Operators

Arithmetic operators are used with numeric values to perform common mathematical operations:

`+` Addition, Eg : `x + y`

`-` Substraction, Eg: `x - y`

`*` Multiplication, Eg : `x * y`

`/` Division, Eg : `x / y` 

`%` Modulus, Eg : `x % y`

`**` Exponentiation, Eg : `x ** y`

`//` Floor Division, Eg : ` x // y`

### Assignment Operators 


Assignment Operators are used to assign values to variables

Operator|Example|Same As
--------|-------|-------
=	|x = 5	|x = 5	
+=	|x += 3	|x = x + 3	
-=	|x -= 3	|x = x - 3	
*=	|x *= 3	|x = x * 3	
/=	|x /= 3	|x = x / 3	
%=	|x %= 3	|x = x % 3	
//=	|x //= 3|x = x // 3	
**=	|x **= 3|x = x ** 3	
&=	|x &= 3	|x = x & 3	
|=	|x |= 3	|x = x | 3	
^=	|x ^= 3	|x = x ^ 3	
\>>=	|x >>= 3	|x = x >> 3	
<<=	|x <<= 3	|x = x << 3

### Comparison Operators
Comparison operators are used to compare two values:

Operator|Name|Example
--------|-------|-----
== | Equal |x==y
!= | Not Equal | x!=y
\> | Greater than | x > y
< | Less than | x < y
\>= | Greater than or equal to | x >=y
<= | Less than or equal to | x <= y

### Python Logical Operators

Logical operators are used to combine conditional statements:

| Operator | Description | Example|
|----------|-------------|--------|
| and | Returns true if both statements are true | `x < 5 and x < 10`|
| or | Returns true if any one of the satements are true| `x = 5 or x < 10`|  
| not | Reverse the result, Return false if the result is true | `not (x < 5 and x < 10)`|

### Identity Operators

Identity operators are used to compare the objects, not if they are equal, but if they are actually the same object, with the same memory location

| Operator | Description | Example|
|----------|-------------|---------|
| is | Returns true if both variables are same object | `x is y`|
| is not | Returns true if both variables are different object | ` x is not y`|

### Membership Operators
| Operator | Description | Example|
|----------|-------------|---------|
| in | returns true, if a sequence with a specific value present in the object| x in y|
| not in | returns true, if if a sequence with a specific value not present in the object|

### Bitwise Operators

Bitwise operators are used to compare Binary Numbers:

Operator|Name|Description
--------|-------|-----|
& | AND |	Sets each bit to 1 if both bits are 1
| \| | OR |Sets each bit to 1 if one of two bits is 1
| ^	| XOR |Sets each bit to 1 if only one of two bits is 1
| ~ 	|NOT| Inverts all the bits
| << | Zero fill left shift	| Shift left by pushing zeros in from the right and let the leftmost bits fall off
|\>> | Signed right shift | Shift right by pushing copies of the leftmost bit in from the left, and let the rightmost bits fall off

Date : 26 July 2022

--------------------

## Variables 

* Variables are containers for storing data values.
* A variable is created the moment you first assign a value to it.
* A Python Variables is only a name given to a memory location, all the operations done on the variable effects that memory location.

### Rules for creating a variable
* A variable name must start with a letter or underscore character 
* A variable name cannot start with number
* A variable name can only contain alpha-numeric characters and underscores
* Variable names are Case Sensitive(name, Name and NAME are three different variables)
* Reserved keywords cannot be used to name a variable 


Example 
```python
x = 5
y = "John"
print(x)
print(y)
```
Output
```
5
John
```

### Assigning single value to multiple variables 

Python allows assigning a single value to several variables, Simultaniously with "=" operator

```python
a = b = c = 10

print(a)
print(b)
print(c)

```
Output:
```
10
10
10
```
### Assigning Different values to multiple variables
Python allows adding different values in a single line with “,”operators.

```python
a, b, c = 1, 20.2, "GeeksforGeeks"

print(a)
print(b)
print(c)
```
Output:
```
1
20.2
GeeksforGeeks
```
### Casting
If you want to specify the data type of a variable, this can be done with casting.
```python
x = str(3)    # x will be '3'
y = int(3)    # y will be 3
z = float(3)  # z will be 3.0
```
### Get the type
You can get the data type of a variable with the type() function.
```python
x = 5
y = "John"
print(type(x))
print(type(y))
```
Output
```
<class 'int'>
<class 'str'>
```
### Single or Double Quote?
String Variable can be defined by using either single quote or double quote

```python
x = "John"
# is the same as
x = 'John
```

### Global and Local Python Variables

* Local Variables are the ones that are defined and declared inside the function, We cannot call this variable outside the function.

```python
# This function uses global variable s
def f():
	s = "Welcome geeks"
	print(s)
f()
```
* Global Variables are the ones that are defined and declared outside a function
  
```python
# This function has a variable with
# name same as s.
def f():
	print(s)


# Global scope
s = "I love Geeksforgeeks"
f()
```
Output
```
I love Geeksforgeeks
```

### Global Keyword in python

Global keyword is a keyword that allows a user to modify a variable outside of the current scope. It is used to create global variables from a non-global scope i.e inside a function. Global keyword is used inside a function only when we want to do assignments or when we want to change a variable. Global is not needed for printing and accessing.

#### Rules of Global Keyword
* If a variable is assigned a value anywhere within the function’s body, it’s assumed to be a local unless explicitly declared as global.
* Variables that are only referenced inside a function are implicitly global.
* We Use global keyword to use a global variable inside a function.
* There is no need to use global keyword outside a function.

```python
# Python program to modify a global
# value inside a function

x = 15
def change():

	# using a global keyword
	global x

	# increment value of a by 5
	x = x + 5
	print("Value of x inside a function :", x)


change()
print("Value of x outside a function :", x)

```
Output:
```
Value of x inside a function : 20
Value of x outside a function : 20
```

### Variable type in Python
Data types are the classification or categorization of data items. It represents the kind of value that tells what operations can be performed on a particular data. Since everything is an object in Python programming, data types are actually classes and variables are instance (object) of these classes.

Following are the standard or built-in data type of Python:

* Numeric
* Sequence Type
* Boolean
* Set
* Dictionary

```python
# numberic
var = 123
print("Numbric data : ", var)

# Sequence Type
String1 = 'Welcome to the Geeks World'
print("String with the use of Single Quotes: ")
print(String1)

# Boolean
print(type(True))
print(type(False))

# Creating a Set with
# the use of a String
set1 = set("GeeksForGeeks")
print("\nSet with the use of String: ")
print(set1)

# Creating a Dictionary
# with Integer Keys
Dict = {1: 'Geeks', 2: 'For', 3: 'Geeks'}
print("\nDictionary with the use of Integer Keys: ")
print(Dict)

```

Output
```
Numbric data :  123
String with the use of Single Quotes: 
Welcome to the Geeks World
<class 'bool'>
<class 'bool'>

Set with the use of String: 
{'r', 'G', 'e', 'k', 'o', 's', 'F'}

Dictionary with the use of Integer Keys: 
{1: 'Geeks', 2: 'For', 3: 'Geeks'}
```
### Object References

```
x = 5
x=y
```
When Python looks at the first statement, what it does is that, first, it creates an object to represent the value 5. Then, it creates the variable x if it doesn’t exist and made it a reference to this new object 5. The second line causes Python to create the variable y, and it is not assigned with x, rather it is made to reference that object that x does. The net effect is that the variables x and y wind up referencing the same object. This situation, with multiple names referencing the same object, is called a *_Shared Reference_* in Python.

### Creating objects (or variables of a class type)

```python
# Python program to show that the variables with a value
# assigned in class declaration, are class variables and
# variables inside methods and constructors are instance
# variables.

# Class for Computer Science Student
class CSStudent:

	# Class Variable
	stream = 'cse'		

	# The init method or constructor
	def __init__(self, roll):
	
		# Instance Variable
		self.roll = roll	

# Objects of CSStudent class
a = CSStudent(101)
b = CSStudent(102)

print(a.stream) # prints "cse"
print(b.stream) # prints "cse"
print(a.roll) # prints 101

# Class variables can be accessed using class
# name also
print(CSStudent.stream) # prints "cse"

```
Output:
```
cse
cse
101
cse
```

## Types of inheritance Python
Inheritance is defined as the mechanism of inheriting the properties of the base class to the child class.

### Types of Inheritaince
* Single Inheritance
* Multiple Inheritance
* Multilevel Inheritance
* Hierarchical Inheritance
* Hybrid Inheritance

#### Single Inheritaince
Single inheritance enables a derived class to inherit properties from a single parent class, thus enabling code reusability and the addition of new features to existing code.

```python
#Python program to demonstrate single inhertaince 

# Base Class
class Parent:
	def func1(self):
		print("This function is in Parent class")
	
# Derived Class 

class Child(Parent):
	def func2(self):
		print("This function is in child class")

# Driver's code
object=Child()
object.func1()
object.func2()
```

Output:

```
This function is in parent class.
This function is in child class.
```

#### Multiple Inheritaince
When a class can be derived from more than one base class this type of inheritance is called multiple inheritances. In multiple inheritances, all the features of the base classes are inherited into the derived class

```python
# Python program to demonstrate
# multiple inheritance

# Base class1
class Mother:
	mothername = ""

	def mother(self):
		print(self.mothername)

# Base class2


class Father:
	fathername = ""

	def father(self):
		print(self.fathername)

# Derived class


class Son(Mother, Father):
	def parents(self):
		print("Father :", self.fathername)
		print("Mother :", self.mothername)


# Driver's code
s1 = Son()
s1.fathername = "RAM"
s1.mothername = "SITA"
s1.parents()

```

Output:
```
Father : RAM
Mother : SITA
```

#### Multilevel Inheritance :
In multilevel inheritance, features of the base class and the derived class are further inherited into the new derived class. This is similar to a relationship representing a child and a grandfather. 

```python
# Python program to demonstrate
# multilevel inheritance

# Base class


class Grandfather:

	def __init__(self, grandfathername):
		self.grandfathername = grandfathername

# Intermediate class


class Father(Grandfather):
	def __init__(self, fathername, grandfathername):
		self.fathername = fathername

		# invoking constructor of Grandfather class
		Grandfather.__init__(self, grandfathername)

# Derived class


class Son(Father):
	def __init__(self, sonname, fathername, grandfathername):
		self.sonname = sonname

		# invoking constructor of Father class
		Father.__init__(self, fathername, grandfathername)

	def print_name(self):
		print('Grandfather name :', self.grandfathername)
		print("Father name :", self.fathername)
		print("Son name :", self.sonname)


# Driver code
s1 = Son('Prince', 'Rampal', 'Lal mani')
print(s1.grandfathername)
s1.print_name()

```

Output:
```
Lal mani
Grandfather name : Lal mani
Father name : Rampal
Son name : Prince
```

#### Hierarichical Inheritaince

When more than one derived class are created from a single base this type of inheritance is called hierarchical inheritance. In this program, we have a parent (base) class and two child (derived) classes.

```python3
# Python program to demonstrate
# Hierarchical inheritance


# Base class
class Parent:
	def func1(self):
		print("This function is in parent class.")

# Derived class1


class Child1(Parent):
	def func2(self):
		print("This function is in child 1.")

# Derivied class2


class Child2(Parent):
	def func3(self):
		print("This function is in child 2.")


# Driver's code
object1 = Child1()
object2 = Child2()
object1.func1()
object1.func2()
object2.func1()
object2.func3()
```

Output:

```
This function is in parent class.
This function is in child 1.
This function is in parent class.
This function is in child 2.
```

#### Hybrid Inheritance: 
Inheritance consisting of multiple types of inheritance is called hybrid inheritance.

```python
# Python program to demonstrate
# hybrid inheritance


class School:
	def func1(self):
		print("This function is in school.")


class Student1(School):
	def func2(self):
		print("This function is in student 1. ")


class Student2(School):
	def func3(self):
		print("This function is in student 2.")


class Student3(Student1, School):
	def func4(self):
		print("This function is in student 3.")


# Driver's code
object = Student3()
object.func1()
object.func2()

```

Output:
```
This function is in school.
This function is in student 1.
```

Date : 27 July 2022 

-------------------

## Python Functions
Python Functions is a block of statements which return the specific task.

The idea is to put some commonly or repeatedly done tasks together and make a function so that instead of writing the same code again and again for different inputs, we can do the function calls to reuse code contained in it over and over again. 

### Creating a Python Function
We can create a  Python function using the def keyword.
```python
# A simple Python function

def fun():
	print("Welcome to GFG")
```


### Calling a  Python Function
After creating a function we can call it by using the name of the function followed by parenthesis containing parameters of that particular function.

```python
# A simple Python function
def fun():
	print("Welcome to GFG")


# Driver code to call a function
fun()

```

Output
```
Welcome to GFG

```
### Defining and calling a function with parameters

#### Python Function with parameters Syntax:

Note : This is for python 3.5 and above

```python
def function_name(parameter: data_type) -> return_type:
    """Doctring"""
    # body of the function
    return expression
```
Example 1:
```python
def add(num1: int, num2: int) -> int:
	"""Add two numbers"""
	num3 = num1 + num2

	return num3

# Driver code
num1, num2 = 5, 15
ans = add(num1, num2)
print(f"The addition of {num1} and {num2} results {ans}.")
```
Output:
```
The addition of 5 and 15 results 20.

```
Example 2:
```python
# some more functions
def is_prime(n):
	if n in [2, 3]:
		return True
	if n % 2 == 0:
		return False
	r = 3
	while r * r <= n:
		if n % r == 0:
			return False
		r += 2
	return True
print(is_prime(78), is_prime(79))
```
Output:
```
False True
```
### Arguments of a Python Function
Arguments are the values passed inside the parenthesis of the function. A function can have any number of arguments separated by a comma.

Example :

```python
# A simple Python function to check
# whether x is even or odd


def evenOdd(x):
	if (x % 2 == 0):
		print("even")
	else:
		print("odd")


# Driver code to call the function
evenOdd(2)
evenOdd(3)
```
Output:
```
even
odd
```
#### Types of Arguments
* Default arguments
* Keyword arguments
* Variable-length arguments

##### Default Arguments 

A default argument is a parameter that assumes a default value if a value is not provided in the function call for that argument. The following example illustrates Default arguments.

```python
# Python program to demonstrate
# default arguments


def myFun(x, y=50):
	print("x: ", x)
	print("y: ", y)


# Driver code (We call myFun() with only
# argument)
myFun(10)

```
Output:
```
x:  10
y:  50
```
Any number of arguments in a function can have a default value. But once we have a default argument, all the arguments to its right must also have default values.
##### Keyword arguments

The idea is to allow the caller to specify the argument name with values so that caller does not need to remember the order of parameters.

```python
# Python program to demonstrate Keyword Arguments
def student(firstname, lastname):
	print(firstname, lastname)


# Keyword arguments
student(firstname='Geeks', lastname='Practice')
student(lastname='Practice', firstname='Geeks')
```

Output:
```
Geeks Practice
Geeks Practice
```

##### Variable-length arguments
In Python, we can pass a variable number of arguments to a function using special symbols. There are two special symbols:

* *args (Non-Keyword Arguments)
* **kwargs (Keyword Arguments)

Example 1: Variable length non-keywords argument

```python
# Python program to illustrate
# *args for variable number of arguments


def myFun(*argv):
	for arg in argv:
		print(arg)


myFun('Hello', 'Welcome', 'to', 'GeeksforGeeks')

```
Output:
```
Hello
Welcome
to
GeeksforGeeks
```
Example 2: Variable length keyword arguments


```python
# Python program to illustrate
# *kwargs for variable number of keyword arguments


def myFun(**kwargs):
	for key, value in kwargs.items():
		print("%s == %s" % (key, value))


# Driver code
myFun(first='Geeks', mid='for', last='Geeks')

```
Output:
```
first == Geeks
mid == for
last == Geeks
```

### Docstring
The first string after the function is called the Document string or Docstring in short. This is used to describe the functionality of the function. The use of docstring in functions is optional but it is considered a good practice.

The below syntax can be used to print out the docstring of a function:
```
Syntax: print(function_name.__doc__)
```

Example:
```python
# A simple Python function to check
# whether x is even or odd


def evenOdd(x):
	"""Function to check if the number is even or odd"""
	
	if (x % 2 == 0):
		print("even")
	else:
		print("odd")


# Driver code to call the function
print(evenOdd.__doc__)
```
Output:
```
Function to check if the number is even or odd

```

### Return statement in Python function
The function return statement is used to exit from a function and go back to the function caller and return the specified value or data item to the caller. 

Syntax:
```
return [expression_list]

```

The return statement can consist of a variable, an expression, or a constant which is returned to the end of the function execution. If none of the above is present with the return statement a None object is returned.


### Pass by Reference or pass by value
One important thing to note is, in Python every variable name is a reference. When we pass a variable to a function, a new reference to the object is created. Parameter passing in Python is the same as reference passing in Java.

Example : 

```python
# Here x is a new reference to same list lst
def myFun(x):
	x[0] = 20


# Driver Code (Note that lst is modified
# after function call.
lst = [10, 11, 12, 13, 14, 15]
myFun(lst)
print(lst)
```
Output
```
[20, 11, 12, 13, 14, 15]
```

When we pass a reference and change the received reference to something else, the connection between the passed and received parameter is broken. For example, consider the below program as follows:

```python3
def myFun(x):

	# After below line link of x with previous
	# object gets broken. A new object is assigned
	# to x.
	x = [20, 30, 40]


# Driver Code (Note that lst is not modified
# after function call.
lst = [10, 11, 12, 13, 14, 15]
myFun(lst)
print(lst)

```
Output:
```
[10, 11, 12, 13, 14, 15]

```

### Anonymus Function
In Python, an anonymous function means that a function is without a name. As we already know the def keyword is used to define the normal functions and the lambda keyword is used to create anonymous functions.

```python
# Python code to illustrate the cube of a number
# using lambda function


def cube(x): return x*x*x

cube_v2 = lambda x : x*x*x

print(cube(7))
print(cube_v2(7))

```
Output:
```
343
343
```
### Python Function within Functions
A function that is defined inside another function is known as the inner function or nested function. Nested functions are able to access variables of the enclosing scope. Inner functions are used so that they can be protected from everything happening outside the function.

Example:
```python
# Python program to
# demonstrate accessing of
# variables of nested functions

def f1():
	s = 'I love GeeksforGeeks'
	
	def f2():
		print(s)
		
	f2()

# Driver's code
f1()

```
Output:
```
I love GeeksforGeeks
```


