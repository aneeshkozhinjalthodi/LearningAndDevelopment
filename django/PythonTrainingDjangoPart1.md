Date : 09 Aug 2022

------------------

## What is django? 
Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.
* Django was designed to help developers take applications from concept to completion as quickly as possible.
* Django takes security seriously and helps developers avoid many common security mistakes.
* Some of the busiest sites on the web leverage Django’s ability to quickly and flexibly scale.

## Why Django?
* It’s very easy to switch database in Django framework.
* It has built-in admin interface which makes easy to work with it.
* Django is fully functional framework that requires nothing else.
* It has thousands of additional packages available.
* It is very scalable.

## Installation of Django
* Install python3 if not installed in your system 
* Install pip- Open command prompt and enter following command-
  * `python -m pip install -U pip`
* Install virtual environment- Enter following command in cmd-
  * `pip install virtualenv`
* Set Virtual environment- Setting up the virtual environment will allow you to edit the dependency which generally your system wouldn’t allow.
  * `virtualenv env_site`
  * `cd env_site`
  * `cd Scripts`
  * `activate`
* Install Django- Install django by giving following command-
  * `pip install django`
* Return to the env_site directory-
  * `cd ..`
* Start a project by following command-
  * `django-admin startproject geeks_site`
* Change directory to geeks_site
  * `cd geeks_site`
* Start the server- Start the server by typing following command in cmd-
  * `python manage.py runserver`
* To check whether server is running or not go to web browser and enter http://127.0.0.1:8000/ as url.

### Benefits of Django Architecture –
* Rapid Development
* Loosely Coupled
* Ease of Modification

### Drawbacks of MVC Architecture –
* Too much load on Model Component
* Development Complexity is high
* Two components are controlling View
 


## Django Project MVT Structure
Django is based on MVT (*Model-View-Template*) architecture. MVT is a software design pattern for developing a web application. 

MVT Structure has the following three parts – 

*Model:* The model is going to act as the interface of your data. It is responsible for maintaining data. It is the logical data structure behind the entire application and is represented by a database (generally relational databases such as MySql, Postgres).

*View:* The View is the user interface — what you see in your browser when you render a website. It is represented by HTML/CSS/Javascript and Jinja files.

*Template:* A template consists of static parts of the desired HTML output as well as some special syntax describing how dynamic content will be inserted.

![MVT](https://media.geeksforgeeks.org/wp-content/uploads/20210606092225/image.png)

## Project Structure :
A Django Project when initialized contains basic files by default such as manage.py, view.py, etc. A simple project structure is enough to create a single-page application. Here are the major files and their explanations. Inside the geeks_site folder ( project folder ) there will be the following files- 

### `manage.py` - 
This file is used to interact with your project via the command line(start the server, sync the database… etc). For getting the full list of commands that can be executed by manage.py type this code in the command window- 

```python
$ python manage.py help
```
Output
```
Available subcommands:

[auth]
    changepassword
    createsuperuser

[contenttypes]
    remove_stale_contenttypes

[django]
    check
    compilemessages
    createcachetable
    dbshell
    diffsettings
    dumpdata
    flush
    inspectdb
    loaddata
    makemessages
    makemigrations
    migrate
    optimizemigration
    sendtestemail
    shell
    showmigrations
    sqlflush
    sqlmigrate
    sqlsequencereset
    squashmigrations
    startapp
    startproject
    test
    testserver

[sessions]
    clearsessions

[staticfiles]
    collectstatic
    findstatic
    runserver
```
###  folder ( `geeks_site` ) – 
This folder contains all the packages of your project. Initially, it contains four files – 

* `__init__.py ` – It is a python package. It is invoked when the package or a module in the package is imported. We usually use this to execute package initialization code, for example for the initialization of package-level data.
* `settings.py` – As the name indicates it contains all the website settings. In this file, we register any applications we create, the location of our static files, database configuration details, etc.
* `urls.py` – In this file, we store all links of the project and functions to call.
* `wsgi.py` – This file is used in deploying the project in WSGI. It is used to help your Django application communicate with the webserver.

Note: WSGI is the Web Server Gateway Interface. It is a specification that describes how a web server communicates with web applications, and how web applications can be chained together to process one request.



## MVC Architecture
The MVC architecture pattern turns complex application development into a much more manageable process. It allows several developers to simultaneously work on the application.

### What is MVC?
MVC stands for model-view-controller. Here's what each of those components mean:
* Model: The backend that contains all the data logic
* View: The frontend or graphical user interface (GUI)
* Controller: The brains of the application that controls how data is displayed

### Why Should You Use MVC?

Three words: separation of concerns, or SoC for short.

The MVC pattern helps you break up the frontend and backend code into separate components. This way, it's much easier to manage and make changes to either side without them interfering with each other.

But this is easier said than done, especially when several developers need to update, modify, or debug a full-blown application simultaneously.

### Model
The model's job is to simply manage the data. Whether the data is from a database, API, or a JSON object, the model is responsible for managing it.

### Views (UI)
The view's job is to decide what the user will see on their screen, and how.


## How to Create a Basic Project using MVT in Django ?

This article focuses on creating a basic project to render a template using MVT architecture. We will use MVT (Models, Views, Templates) to render data to a local server.

### Create a basic Project: 

* To initiate a project of Django on Your PC, open Terminal and Enter the following command 

```python 
django-admin startproject projectName
```

* A New Folder with the name `projectName` will be created. To enter in the project using the terminal enter command 

```
cd projectName
```
* Create a new file views.py inside the project folder where settings.py, urls.py and other files are stored and save the following code in it- 

```python
# HttpResponse is used to
# pass the information
# back to view
from django.http import HttpResponse

# Defining a function which
# will receive request and
# perform task depending
# upon function definition
def hello_geek (request) :

	# This will return Hello Geeks
	# string as HttpResponse
	return HttpResponse("Hello Geeks")

```

* Open `urls.py` inside project folder (projectName) and add your entry- 
  * Import hello_geek function from views.py file.  
```
from projectName.views import hello_geeks
```

* Add an entry in url field inside url patterns- 

```
path('geek/', hello_geek), 
```
* Now to run the server follow these steps- 
  * Start the server- Start the server by typing following command in cmd- 
``` 
$ python manage.py runserver 127.0.0.1:8080
```
* Checking – Open the browser and type this url-  http://127.0.0.1:8080/geek/















