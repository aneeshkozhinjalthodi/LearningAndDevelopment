Date : 2 Aug 2022

-----------------

## Python Modules
A Python module is a file containing Python definitions and statements. A module can define functions, classes, and variables. A module can also include runnable code. Grouping related code into a module makes the code easier to understand and use. It also makes the code logically organized.

Example : create a simple module
```python
# A simple module, calc.py

def add(x, y):
	return (x+y)

def subtract(x, y):
	return (x-y)
```

### Import Module in Python –  Import statement
We can import the functions, classes defined in a module to another module using the import statement in some other Python source file. 

Syntax:
```python
import module
```
When the interpreter encounters an import statement, it imports the module if the module is present in the search path. A search path is a list of directories that the interpreter searches for importing a module. For example, to import the module calc.py, we need to put the following command at the top of the script.

Example: Importing modules in Python
```python
# importing module calc.py
import calc

print(calc.add(10, 2))
```
Output:
```
12
```
### The from import Statement 
Python’s from statement lets you import specific attributes from a module without importing the module as a whole.

Example: Importing specific attributes from the module

```python
# importing sqrt() and factorial from the
# module math
from math import sqrt, factorial

# if we simply do "import math", then
# math.sqrt(16) and math.factorial()
# are required.
print(sqrt(16))
print(factorial(6))
```
Output:
```
4.0
720
```

### Import all Names – From import *  Statement
The * symbol used with the from import statement is used to import all the names from a module to a current namespace.

Syntax:
```
from module_name import *
```
The use of * has its advantages and disadvantages. If you know exactly what you will be needing from the module, it is not recommended to use *, else do so.

Example: Importing all names

```python
Example: Importing all names
```

### Locating Modules
Whenever a module is imported in Python the interpreter looks for several locations. First, it will check for the built-in module, if not found then it looks for a list of directories defined in the sys.path. Python interpreter searches for the module in the following manner –

* First, it searches for the module in the current directory.
* If the module isn’t found in the current directory, Python then searches each directory in the shell variable PYTHONPATH. The PYTHONPATH is an environment variable, consisting of a list of directories.
* If that also fails python checks the installation-dependent list of directories configured at the time Python is installed.

```python
# importing sys module
import sys

# importing sys.path
print(sys.path)
```
Output:
```
[‘/home/aneesh/Desktop/gfg’, ‘/usr/lib/python38.zip’, ‘/usr/lib/python3.8’, ‘/usr/lib/python3.8/lib-dynload’, ”, ‘/home/aneesh/.local/lib/python3.8/site-packages’, ‘/usr/local/lib/python3.8/dist-packages’, ‘/usr/lib/python3/dist-packages’, ‘/usr/local/lib/python3.8/dist-packages/IPython/extensions’, ‘/home/aneesh/.ipython’]
```
### Importing and renaming module
We can rename the module while importing it using the as keyword. 
Example: Renaming the module
```python
# importing sqrt() and factorial from the
# module math
import math as gfg

# if we simply do "import math", then
# math.sqrt(16) and math.factorial()
# are required.
print(gfg.sqrt(16))
print(gfg.factorial(6))
```
Output:
```
4.0
720
```
### The dir() function
The dir() built-in function returns a sorted list of strings containing the names defined by a module. The list contains the names of all the modules, variables, and functions that are defined in a module.

```python
# Import built-in module random
import random
print(dir(random))
```
Output:
```
[‘BPF’, ‘LOG4’, ‘NV_MAGICCONST’, ‘RECIP_BPF’, ‘Random’, ‘SG_MAGICCONST’, ‘SystemRandom’, ‘TWOPI’, ‘_BuiltinMethodType’, ‘_MethodType’, ‘_Sequence’, ‘_Set’, ‘__all__’, ‘__builtins__’, ‘__cached__’, ‘__doc__’, ‘__file__’, ‘__loader__’, ‘__name__’, ‘__package__’, ‘__spec__’, ‘_acos’, ‘_bisect’, ‘_ceil’, ‘_cos’, ‘_e’, ‘_exp’, ‘_inst’, ‘_itertools’, ‘_log’, ‘_pi’, ‘_random’, ‘_sha512’, ‘_sin’, ‘_sqrt’, ‘_test’, ‘_test_generator’, ‘_urandom’, ‘_warn’, ‘betavariate’, ‘choice’, ‘choices’, ‘expovariate’, ‘gammavariate’, ‘gauss’, ‘getrandbits’, ‘getstate’, ‘lognormvariate’, ‘normalvariate’, ‘paretovariate’, ‘randint’, ‘random’, ‘randrange’, ‘sample’, ‘seed’, ‘setstate’, ‘shuffle’, ‘triangular’, ‘uniform’, ‘vonmisesvariate’, ‘weibullvariate’]
```

### Code Snippet illustrating python built-in modules: 

```python
# importing built-in module math
import math

# using square root(sqrt) function contained
# in math module
print(math.sqrt(25))

# using pi function contained in math module
print(math.pi)

# 2 radians = 114.59 degrees
print(math.degrees(2))

# 60 degrees = 1.04 radians
print(math.radians(60))

# Sine of 2 radians
print(math.sin(2))

# Cosine of 0.5 radians
print(math.cos(0.5))

# Tangent of 0.23 radians
print(math.tan(0.23))

# 1 * 2 * 3 * 4 = 24
print(math.factorial(4))

# importing built in module random
import random

# printing random integer between 0 and 5
print(random.randint(0, 5))

# print random floating point number between 0 and 1
print(random.random())

# random number between 0 and 100
print(random.random() * 100)

List = [1, 4, True, 800, "python", 27, "hello"]

# using choice function in random module for choosing
# a random element from a set such as a list
print(random.choice(List))


# importing built in module datetime
import datetime
from datetime import date
import time

# Returns the number of seconds since the
# Unix Epoch, January 1st 1970
print(time.time())

# Converts a number of seconds to a date object
print(date.fromtimestamp(454554))
```

Output:
```
5.0

3.14159265359

114.591559026

1.0471975512

0.909297426826

0.87758256189

0.234143362351

24

3

0.401533172951

88.4917616788

True

1461425771.87
```

## Python Requests Tutorial
Requests library is one of the integral part of Python for making HTTP requests to a specified URL. Whether it be REST APIs or Web Scrapping, requests is must to be learned for proceeding further with these technologies. When one makes a request to a URI, it returns a response. Python requests provides inbuilt functionalities for managing both the request and response.

### Why learn Python requests module?
* Requests is an Apache2 Licensed HTTP library, that allows to send HTTP/1.1 requests using Python.
* To play with web, Python Requests is must. Whether it be hitting APIs, downloading entire facebook pages, and much more cool stuff, one will have to make a request to the URL.
* Requests play a major role is dealing with REST APIs, and Web Scrapping.

Ref Example : https://www.geeksforgeeks.org/implementing-web-scraping-python-beautiful-soup/ 

### Installing Requests

```python
pip install requests
```

The basic method for installation of requests on any operating system is to grab the base files and install requests manually and Requests is actively developed on GitHub, where the code is always available. For code – https://github.com/psf/requests

Date : 3 Aug 20222

---------------------------

### Making a Request
Python requests module has several built-in methods to make Http requests to specified URI using GET, POST, PUT, PATCH or HEAD requests. A Http request is meant to either retrieve data from a specified URI or to push data to a server. It works as a request-response protocol between a client and a server. Let’s demonstrate how to make a GET request to an endpoint.
GET method is used to retrieve information from the given server using a given URI. The GET method sends the encoded user information appended to the page request. The page and the encoded information are separated by the ‘?’ character.
For example:
```
https://www.google.com/search?q=hello
```
*How to make GET request through Python Requests*

Python’s requests module provides in-built method called get() for making a GET request to a specified URI.

```
requests.get(url, params={key: value}, args)
```
Example –

Let’s try making a request to github’s APIs for example purposes.

```python
import requests

# Making a GET request
r = requests.get('https://api.github.com/users/naveenkrnl')

# check status code for response received
# success code - 200
print(r)

# print content of request
print(r.content)
```

### Http Request Methods –

|Method|Description|
|------|-----------|
|GET|GET method is used to retrieve information from the given server using a given URI.|
POST|	POST request method requests that a web server accepts the data enclosed in the body of the request message, most likely for storing it
PUT	|The PUT method requests that the enclosed entity be stored under the supplied URI. If the URI refers to an already existing resource, it is modified and if the URI does not point to an existing resource, then the server can create the resource with that URI.
DELETE|	The DELETE method deletes the specified resource
HEAD|	The HEAD method asks for a response identical to that of a GET request, but without the response body.
PATCH|	It is used for modify capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource


### Response object

When one makes a request to a URI, it returns a response. This Response object in terms of python is returned by requests.method(), method being – get, post, put, etc. Response is a powerful object with lots of functions and attributes that assist in normalizing data or creating ideal portions of code. For example, response.status_code returns the status code from the headers itself, and one can check if the request was processed successfully or not.
Response object can be used to imply lots of features, methods, and functionalities.

```python
# import requests module
import requests

# Making a get request
response = requests.get('https://api.github.com/')

# print request object
print(response.url)

# print status code
print(response.status_code)
```
Note: Status code 200 indicates that request was made successfully.

### Response Methods
|Method|Description|
|------|-----------|
response.headers|response.headers returns a dictionary of response headers.
response.encoding|response.encoding returns the encoding used to decode response.content.
response.elapsed|response.elapsed returns a timedelta object with the time elapsed from sending the request to the arrival of the response.
response.close()|response.close() closes the connection to the server.
response.content|response.content returns the content of the response, in bytes.
response.cookies|response.cookies returns a CookieJar object with the cookies sent back from the server.
response.history|response.history returns a list of response objects holding the history of request (url).
response.is_permanent_redirect|response.is_permanent_redirect returns True if the response is the permanent redirected url, otherwise False.
response.is_redirect|response.is_redirect returns True if the response was redirected, otherwise False.
response.iter_content()|response.iter_content() iterates over the response.content.
response.json()|response.json() returns a JSON object of the result (if the result was written in JSON format, if not it raises an error).
response.url|response.url returns the URL of the response.
response.text|response.text returns the content of the response, in unicode.
response.status_code|response.status_code returns a number that indicates the status (200 is OK, 404 is Not Found).
response.request|response.request returns the request object that requested this response.
response.reason|response.reason returns a text corresponding to the status code.
response.raise_for_status()|response.raise_for_status() returns an HTTPError object if an error has occurred during the process.
response.ok|response.ok returns True if status_code is less than 200, otherwise False.
response.links|response.links returns the header links.

### Authentication using Python Requests
Authentication refers to giving a user permissions to access a particular resource. Since, everyone can’t be allowed to access data from every URL, one would require authentication primarily. To achieve this authentication, typically one provides authentication data through Authorization header or a custom header defined by server.

```python
# import requests module
import requests
from requests.auth import HTTPBasicAuth

# Making a get request
response = requests.get('https://api.github.com / user, ',
			auth = HTTPBasicAuth('user', 'pass'))

# print request object
print(response)
```
Replace “user” and “pass” with your username and password. It will authenticate the request and return a response 200 or else it will return error 403.

### SSL Certificate Verification
Requests verifies SSL certificates for HTTPS requests, just like a web browser. SSL Certificates are small data files that digitally bind a cryptographic key to an organization’s details. Often, an website with a SSL certificate is termed as secure website. By default, SSL verification is enabled, and Requests will throw a SSLError if it’s unable to verify the certificate.

Let us try to access a website with an invalid SSL certificate, using Python requests

```python
# import requests module
import requests

# Making a get request
response = requests.get('https://expired.badssl.com/')

# print request object
print(response)
```
This website doesn’t have SSL setup so it raises this error.
one can also pass the link to the certificate for validation via python requests only.

```python
# import requests module
import requests

# Making a get request
response = requests.get('https://github.com', verify ='/path/to/certfile')

# print request object
print(response)
```

### Session Objects
Session object allows one to persist certain parameters across requests. It also persists cookies across all requests made from the Session instance and will use urllib3’s connection pooling. So if several requests are being made to the same host, the underlying TCP connection will be reused, which can result in a significant performance increase. A session object all the methods as of requests.

#### Using Session Objects
Let us illustrate use of session objects by setting a cookie to a url and then making a request again to check if cookie is set.

```python
# import requests module
import requests

# create a session object
s = requests.Session()

# make a get request
s.get('https://httpbin.org/cookies/set/sessioncookie/123456789')

# again make a get request
r = s.get('https://httpbin.org/cookies')

# check if cookie is still set
print(r.text)
```