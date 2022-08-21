Date : 4 Aug 2022

-----------------
## Reading and Writing to text files in Python
Python provides inbuilt functions for creating, writing, and reading files. There are two types of files that can be handled in python, normal text files and binary files (written in binary language, 0s, and 1s).
* Text files: In this type of file, Each line of text is terminated with a special character called EOL (End of Line), which is the new line character (‘\n’) in python by default.
* Binary files: In this type of file, there is no terminator for a line, and the data is stored after converting it into machine-understandable binary language.

In this article, we will be focusing on opening, closing, reading, and writing data in a text file.

### File Access Modes
Access modes govern the type of operations possible in the opened file. It refers to how the file will be used once its opened. These modes also define the location of the File Handle in the file. File handle is like a cursor, which defines from where the data has to be read or written in the file. There are 6 access modes in python.

1. *Read Only (‘r’)* : Open text file for reading. The handle is positioned at the beginning of the file. If the file does not exists, raises the I/O error. This is also the default mode in which a file is opened.
2. *Read and Write (‘r+’):* Open the file for reading and writing. The handle is positioned at the beginning of the file. Raises I/O error if the file does not exist.
3. *Write Only (‘w’) :* Open the file for writing. For the existing files, the data is truncated and over-written. The handle is positioned at the beginning of the file. Creates the file if the file does not exist.
4. *Write and Read (‘w+’) :* Open the file for reading and writing. For an existing file, data is truncated and over-written. The handle is positioned at the beginning of the file.
5. *Append Only (‘a’):* Open the file for writing. The file is created if it does not exist. The handle is positioned at the end of the file. The data being written will be inserted at the end, after the existing data.
6. Append and Read (‘a+’) : Open the file for reading and writing. The file is created if it does not exist. The handle is positioned at the end of the file. The data being written will be inserted at the end, after the existing data.

#### How Files are Loaded into Primary Memory
There are two kinds of memory in a computer i.e. Primary and Secondary memory every file that you saved or anyone saved is on secondary memory cause any data in primary memory is deleted when the computer is powered off. So when you need to change any text file or just to work with them in python you need to load that file into primary memory. Python interacts with files loaded in primary memory or main memory through “file handlers” ( This is how your operating system gives access to python to interact with the file you opened by searching the file in its memory if found it returns a file handler and then you can work with the file ).

#### Opening a File
It is done using the open() function. No module is required to be imported for this function.
```
File_object = open(r"File_Name","Access_Mode")
```
The file should exist in the same directory as the python program file else, the full address of the file should be written in place of the filename. Note: The r is placed before the filename to prevent the characters in the filename string to be treated as special characters. For example, if there is \temp in the file address, then \t is treated as the tab character, and an error is raised of invalid address. The r makes the string raw, that is, it tells that the string is without any special characters. The r can be ignored if the file is in the same directory and the address is not being placed. 

```python
# Open function to open the file "MyFile1.txt"
# (same directory) in append mode and
file1 = open("MyFile.txt","a")

# store its reference in the variable file1
# and "MyFile2.txt" in D:\Text in file2
file2 = open(r"D:\Text\MyFile2.txt","w+")
```
Here, file1 is created as an object for MyFile1 and file2 as object for MyFile2

#### Closing a file
close() function closes the file and frees the memory space acquired by that file. It is used at the time when the file is no longer needed or if it is to be opened in a different file mode. File_object.close() 

```python
# Opening and Closing a file "MyFile.txt"
# for object name file1.
file1 = open("MyFile.txt","a")
file1.close()
```

#### Writing to a file
There are two ways to write in a file.
1. *write() :* Inserts the string str1 in a single line in the text file.
```
File_object.write(str1)
```
2. *writelines() :* For a list of string elements, each string is inserted in the text file.Used to insert multiple strings at a single time.
```python
File_object.writelines(L) for L = [str1, str2, str3] 
```
#### Reading from a file
There are three ways to read data from a text file.

1. read() : Returns the read bytes in form of a string. Reads n bytes, if no n specified, reads the entire file.
```python
File_object.read([n])
```
2. readline() : Reads a line of the file and returns in form of a string.For specified n, reads at most n bytes. However, does not reads more than one line, even if n exceeds the length of the line.
```
File_object.readline([n])
```

3. readlines() : Reads all the lines and return them as each line a string element in a list

```
File_object.readlines()
```

Note: ‘\n’ is treated as a special character of two bytes 



```python
# Program to show various ways to read and
# write data in a file.
file1 = open("myfile.txt","w")
L = ["This is Delhi \n","This is Paris \n","This is London \n"]

# \n is placed to indicate EOL (End of Line)
file1.write("Hello \n")
file1.writelines(L)
file1.close() #to change file access modes

file1 = open("myfile.txt","r+")

print("Output of Read function is ")
print(file1.read())
print()

# seek(n) takes the file handle to the nth
# bite from the beginning.
file1.seek(0)

print( "Output of Readline function is ")
print(file1.readline())
print()

file1.seek(0)

# To show difference between read and readline
print("Output of Read(9) function is ")
print(file1.read(9))
print()

file1.seek(0)

print("Output of Readline(9) function is ")
print(file1.readline(9))

file1.seek(0)
# readlines function
print("Output of Readlines function is ")
print(file1.readlines())
print()
file1.close()
```

Output:
```
Output of Read function is 
Hello 
This is Delhi 
This is Paris 
This is London 


Output of Readline function is 
Hello 


Output of Read(9) function is 
Hello 
Th

Output of Readline(9) function is 
Hello 

Output of Readlines function is 
['Hello \n', 'This is Delhi \n', 'This is Paris \n', 'This is London \n']
```

### Appending to a file
```python
# Python program to illustrate
# Append vs write mode
file1 = open("myfile.txt","w")
L = ["This is Delhi \n","This is Paris \n","This is London \n"]
file1.writelines(L)
file1.close()

# Append-adds at last
file1 = open("myfile.txt","a")#append mode
file1.write("Today \n")
file1.close()

file1 = open("myfile.txt","r")
print("Output of Readlines after appending")
print(file1.readlines())
print()
file1.close()

# Write-Overwrites
file1 = open("myfile.txt","w")#write mode
file1.write("Tomorrow \n")
file1.close()

file1 = open("myfile.txt","r")
print("Output of Readlines after writing")
print(file1.readlines())
print()
file1.close()
```
Output:
```
Output of Readlines after appending
['This is Delhi \n', 'This is Paris \n', 'This is London \n', 'Today \n']

Output of Readlines after writing
['Tomorrow \n']
```

## Input and Output in Python

How to Take Input from User in Python

Syntax:

```
input('prompt')
```
where prompt is an optional string that is displayed on the string at the time of taking input.

Example 1: Python get user input with a message

```python
# Taking input from the user
name = input("Enter your name: ")

# Output
print("Hello, " + name)
print(type(name))
```
Output:
```
Enter your name: GFG
Hello, GFG
<class 'str'>
```
Note: Python takes all the input as a string input by default. To convert it to any other data type we have to convert the input explicitly. For example, to convert the input to int or float we have to use the int() and float() method respectively.

Example 2: Integer input in Python 

```python
# Taking input from the user as integer
num = int(input("Enter a number: "))

add = num + 1

# Output
print(add)
```
Output:
```
Enter a number: 25
26
```

### How to take Multiple Inputs in Python :
we can take multiple inputs of the same data type at a time in python, using map() method in python.

```python
a, b, c = map(int, input("Enter the Numbers : ").split())
print("The Numbers are : ",end = " ")
print(a, b, c)
```

Output:
```
Enter the Numbers : 2 3 4
The Numbers are :  2 3 4
```
### How take inputs for the Sequence Data Types like List, Set, Tuple, etc.

In the case of List and Set the input can be taken from the user in two ways.

* Taking List/Set elements one by one by using the append()/add() methods.
* Using map() and list() / set()  methods.


#### Taking List/Set elements one by one 
Take the elements of the List/Set one by one and use the append() method in the case of List, and add() method in the case of a Set, to add the elements to the List / Set.

```python
List = list()
Set = set()
l = int(input("Enter the size of the List : "))
s = int(input("Enter the size of the Set : "))
print("Enter the List elements : ")
for i in range(0, l):
	List.append(int(input()))
print("Enter the Set elements : ")
for i in range(0, s):
	Set.add(int(input()))
print(List)
print(Set)
```
Output :
```
Enter the size of the List : 4
Enter the size of the Set  : 3
Enter the List elements : 
9
0
1
3
Enter the Set elements : 
2
9
1
[9, 0, 1, 3]
{9, 2, 1}
```
#### Using map() and list() / set() Methods 

```python
List = list(map(int, input("Enter List elements : ").split()))
Set = set(map(int, input("Enter the Set elements :").split()))
print(List)
print(Set)
```
Output:
```
Enter List elements : 3 4 8 9 0 11
Enter the Set elements :34 88 230 234 123 
[3, 4, 8, 9, 0, 11]
{34, 230, 234, 88, 123} 
```
#### Taking Input for Tuple 
```python
T = (2, 3, 4, 5, 6)
print("Tuple before adding new element")
print(T)
L = list(T)
L.append(int(input("Enter the new element : ")))
T = tuple(L)
print("Tuple After adding the new element")
print(T)
```
Output:
```
Tuple before adding new element
(2, 3, 4, 5, 6)
Enter the new element : 35
Tuple After adding the new element
(2, 3, 4, 5, 6, 35)
```
### How to Display Output in Python

Syntax: print(value(s), sep= ‘ ‘, end = ‘\n’, file=file, flush=flush)
```
Parameters:
value(s) : Any value, and as many as you like. Will be converted to string before printed
sep=’separator’ : (Optional) Specify how to separate the objects, if there is more than one.Default :’ ‘
end=’end’: (Optional) Specify what to print at the end.Default : ‘\n’
file : (Optional) An object with a write method. Default :sys.stdout
flush : (Optional) A Boolean, specifying if the output is flushed (True) or buffered (False). Default: False

```
Example: Python Print Output
```python
# Python program to demonstrate
# print() method
print("GFG")

# code for disabling the softspace feature
print('G', 'F', 'G')
```

Output:
```
GFG
G F G

```
In the above example, we can see that in the case of the 2nd print statement there is a space between every letter and the print statement always add a new line character at the end of the string. This is because after every character the sep parameter is printed and at the end of the string the end parameter is printed. Let’s try to change this sep and end parameter.

#### Example: Python Print output with custom sep and end parameter

```python
# Python program to demonstrate
# print() method
print("GFG", end = "@")

# code for disabling the softspace feature
print('G', 'F', 'G', sep="#")
```

Output:
```
GFG@G#F#G
```

### Formatting Output
Formatting output in Python can be done in many ways. Let’s discuss them below

#### Using formatted string literals
We can use formatted string literals, by starting a string with f or F before opening quotation marks or triple quotation marks. In this string, we can write Python expressions between `{` and `}` that can refer to a variable or any literal value.

Example: Python String formatting using F string

```python
# Declaring a variable
name = "Gfg"

# Output
print(f'Hello {name}! How are you?')
```

Output: 

```
Hello Gfg! How are you?

```
#### Using format()
We can also use `format()` function to format our output to make it look presentable. The curly braces `{` `}` work as placeholders. We can specify the order in which variables occur in the output. 

```python
# Initializing variables
a = 20
b = 10

# addition
sum = a + b

# subtraction
sub = a- b

# Output
print('The value of a is {} and b is {}'.format(a,b))

print('{2} is the sum of {0} and {1}'.format(a,b,sum))

print('{sub_value} is the subtraction of {value_a} and {value_b}'.format(value_a = a ,
																		value_b = b,
																		sub_value = sub))
```

Output:

```
The value of a is 20 and b is 10
30 is the sum of 20 and 10
10 is the subtraction of 20 and 10
```
#### Using % Operator
We can use `‘%’` operator. `%` values are replaced with zero or more value of elements. The formatting using % is similar to that of ‘printf’ in the C programming language.
* `%d` – integer
* `%f` – float
* `%s` – string
* `%x` – hexadecimal
* `%o` – octal

Example:
```python
# Taking input from the user
num = int(input("Enter a value: "))

add = num + 5

# Output
print("The sum is %d" %add)
```

Output:
```
Enter a value: 50
The sum is 55
```

## Python Type Casting
Type Casting is the method to convert the variable data type into a certain data type in order to the operation required to be performed by users. In this article, we will see the various technique for typecasting.

There can be two types of Type Casting in Python –

* Implicit Type Casting
* Explicit Type Casting

### Implicit Type Conversion
In this,  methods, Python converts data type into another data type automatically. In this process, users don’t have to involve in this process. 

```python
# Python program to demonstrate
# implicit type Casting

# Python automatically converts
# a to int
a = 7
print(type(a))

# Python automatically converts
# b to float
b = 3.0
print(type(b))

# Python automatically converts
# c to float as it is a float addition
c = a + b
print(c)
print(type(c))

# Python automatically converts
# d to float as it is a float multiplication
d = a * b
print(d)
print(type(d))
```

Output:
```
<class 'int'>
<class 'float'>
10.0
<class 'float'>
21.0
<class 'float'>
```
### Explicit Type Casting
In this method, Python need user involvement to convert the variable data type into certain data type in order to the operation required.

Mainly in type casting can be done with these data type function:
* `Int()` : Int() function take float or string as an argument and return int type object.
* `float()` : float() function take int or string as an argument and return float type object.
* `str()` : str() function take float or int as an argument and return string type object.

#### Let’s see some example of type casting:
Type Casting int to float:

Here, we are casting integer object to float object with float() function.

```python
# Python program to demonstrate
# type Casting

# int variable
a = 5

# typecast to float
n = float(a)

print(n)
print(type(n))

```
Output:
```
5.0
<class 'float'>
```
#### Type Casting float to int:

```python
# Python program to demonstrate
# type Casting

# int variable
a = 5.9

# typecast to int
n = int(a)

print(n)
print(type(n))
```
Output:
```
5
<class 'int'>
```