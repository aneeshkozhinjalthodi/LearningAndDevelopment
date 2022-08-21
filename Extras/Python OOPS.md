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
