# RUBY


>## Comment 
> \# is used for comments
 
>## Print
> print <text/variable> # print the data and returns nil
>
> p <text/variable>
>
> puts <text/variable> # include default new line

>## Variables 
>A location in memory

>## Functions
>Syntax :
>
> def <function_name>
>
>  \#code
>
> end

>## Strings
```ruby
first_name='Aneesh'

last_name='K'

first_name="Aneesh"

last_name="K"

# using single quote we cannot do string interpolation

puts "first name : #{first_name} last name : #{last_name}" # works and print actual firstname and lastname

puts 'first name : #{first_name} last name : #{last_name}' #concider everything as a string

#output
#####################
2.5.1 :001 > first_name="Aneesh"
 => "Aneesh" 
2.5.1 :002 > last_name="K"
 => "K" 
2.5.1 :003 > full_name="#{first_name} #{last_name}"
 => "Aneesh K" 
2.5.1 :004 > 

2.5.1 :008 > first_name='Aneesh'
 => "Aneesh" 
2.5.1 :009 > last_name='K'
 => "K" 
2.5.1 :010 > full_name='#{first_name} #{last_name}'
 => "\#{first_name} \#{last_name}" 
######################
#everything in ruby is an object
full_name.class
 => String 
#to get all the methods available for a object
<object>.methods

#some of the string methods
length
reverse
capitalize
empty?
sub(sentence,sub)
gsub(sentence,sub)
to_s
to_i

#nil and empty are different
#in ruby the variables are pointing to data rather than data pointing to variables
#eg :
first_name="Aneesh"
new_first_name=first_name
first_name="Rahul"

#first_name contains rahul and new_first_name contains Aneesh
# this functionaly of ruby is called pass by reference
```
## Get input from user.

```ruby 
gets.chomp
first_name=gets.chomp
aneesh
 => "aneesh" 

#the gets.chomp will read the data as string and store to a variable
```

### Assignment 1 : analyzer.rb
```ruby 
puts "Enter your first name "
first_name = gets.chomp
puts "Enter your last name "
last_name = gets.chomp
full_name="#{first_name} #{last_name}"

puts "Your first name is : #{first_name}"
puts "Your last name is : #{last_name}"
puts "Your full name reversed is : #{full_name.reverse}"
puts "Your full name contains total #{full_name.gsub!(/[^A-Za-z]/,"").length} Characters"


```
>Output
```
Enter your first name 
Aneesh
Enter your last name 
K
Your first name is : Aneesh
Your last name is : K
Your full name reversed is : K hseenA
Your full name contains total 7 Characters

```