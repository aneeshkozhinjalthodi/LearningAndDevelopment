## Python PIP
Python pip is the package manager for Python packages. We can use pip to install packages that do not come with Python. The basic syntax of pip commands in command prompt is: 

Syntax:
```
pip 'arguments'
```
### How to install pip?
Python pip comes pre-installed on 3.4 or older versions of Python. To check whether pip is installed or not type the below command in the terminal.

```
pip --version
```
### How to install Package with Pip

We can install additional packages by using the Python pip install command. Let’s suppose we want to install the Numpy using pip. We can do it using the below command.

Syntax:
```
pip install numpy
```

### Specifying Package Version

Syntax:
```
pip install package_name==version
```

### Display package information using pip

Syntax: 

```
pip show numpy
```
Note: 

* Requires column shows the dependencies required by the NumPy package
* Required by shows the packages that require NumPy

### Get a list of locally installed Python modules

Syntax:
```
pip list
```
### Uninstall packages with pip

Syntax:
```sh
pip uninstall numpy
```

Note: The pip uninstall command does not uninstall the package dependencies. If you want to remove the dependencies as well then you can see the dependencies using the pip show command and remove each package manually.


### Search packages with pip

Syntax:
```
pip search numpy
```

### Using requirement files with pip
Let’s suppose you want more than one package then instead of installing each package manually, you can install all the modules in a single go. This can be done by creating a requirements.txt file. Let’s suppose the requirements.txt file looks like this:

```
> requirements.txt
numpy
pillow
pygame
```
Syntax:
```
pip install -r requirements.txt
```

### Listing additional packages with pip
The Python pip freeze command is used to list packages that don’t come pre-installed with Python.

### Listing Outdated Packages with pip
Python pip list –outdated command is used to list all the packages that are outdated. This command cross-checks the installed package information with the pip repository.

Syntax:
```
pip list --outdated
```

### Upgrading packages with pip

Syntax:
```
pip install --user --upgrade package_name
```

We can also upgrade any package to a specific version using the below command.

```python
pip install --user --upgrade package_name==version
```
### Downgrading packages with pip

The Python pip install –user command is used to downgrade a package to the specific version.

Syntax:
```
pip install --user package_name==version
```

## Python Packages
We usually organize our files in different folders and subfolders based on some criteria, so that they can be managed easily and efficiently. For example, we keep all our games in a Games folder and we can even subcategorize according to the genre of the game or something like this. The same analogy is followed by the Python package. 

A Python module may contain several classes, functions, variables, etc. whereas a Python package can contains several module. In simpler terms a package is folder that contains various modules as files.

### Creating Package

Let’s create a package named mypckg that will contain two modules mod1 and mod2. To create this module follow the below steps – 

* Create a folder named mypckg.
* Inside this folder create an empty Python file i.e. \_\_init\_\_.py
* Then create two modules mod1 and mod2 in this folder.
Mod1.py

Mod1.py
```
def gfg():
	print("Welcome to GFG")
```
Mod2.py
```
def sum(a, b):
	return a+b
```

### The hierarchy of the our package looks like this – 

```
mypckg
|
|
---__init__.py
|
|
---mod1.py
|
|
---mod2.py

```

### Understanding \_\_init\_\_.py

\_\_init\_\_.py helps the Python interpreter to recognise the folder as package. It also specifies the resources to be imported from the modules. If the \_\_init\_\_.py is empty this means that all the functions of the modules will be imported. We can also specify the functions from each module to be made available.

For example, we can also create the \_\_init\_\_.py file for the above module as – 

\_\_init\_\_.py
```python
from .mod1 import gfg
from .mod2 import sum
```

This \_\_init\_\_.py will only allow the gfg and sum functions from the mod1 and mod2 modules to be imported.

### Import Modules from a Package
Syntax:
```
import package_name.module_name
```
Example: Import Module from package

```python
from mypckg import mod1
from mypckg import mod2

mod1.gfg()
res = mod2.sum(1, 2)
print(res)
```

Output:
```
Welcome to GFG
3
```
Example: Import Specific function from the module

```python
from mypckg.mod1 import gfg
from mypckg.mod2 import sum

gfg()
res = sum(1, 2)
print(res)
```
Output:
```
Welcome to GFG
3
```