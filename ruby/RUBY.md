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
>Output : 
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

## Blocks 
```ruby
i=5;10.times {k=5;puts "#{i} * #{k}=#{i*k}";i+=1}
```

## Comparison operators
```ruby 
==
===
object.equal?(num) #type also shuld be matched
!=
>
<
>=
<=
```

## Methods

```ruby
def multiply(first_num,second_num)
first_num*second_num #last evaluated statement is returned no need of giving return explicitly
end  
```

## Branching (if else)
```ruby
if true
    #code
elsif
    #code
else
    #code
end
```
## Arrays

```ruby 
a=[1, 2, 3, 4, 5, 6, 7]
p a.last
p a.first
p a[-1]
b=(1..100).to_a
! # used to mutate the array
b.reverse!
b.shuffle!
# add item to array 
b <<101
or 
a.append(1)
# to remove first element 
b.shift(1)
# to remove first two element 
b.shift(2)
# to insert number 1 to an array
b.unshift(1)
# to make array unique
b.uniq!
# to check array is empty
b.empty?
# to search for an element in an array
b.include?(1)
#other methods
#push 1 to array
b.push(1)

#pop 1 element from array
b.pop(1)

# join array
b.join(" ")
# split array
b.split( )
#create array
%w(Myname is aneesh)
>> %w(Myname is aneesh)
=> ["Myname", "is", "aneesh"]

#iterators
b.each {|i| p i}
or 

b.each do |i| p i end

#print only odd numbers 
b.select{|a| a.odd?}

```

## Hashes
```ruby 
hash_example={'a'=>1,'b'=>2}

# Symbols 
hash_example={a: 1,b: 2}
#symbols cannot be changed
#eg username

# Hashes - Text with directions, references and code
# To create a hash called my_details include the elements within { }:
# 
# my_details = {'name' => 'mashrur', 'favcolor' => 'red'}
# 
# To access the value and notify me what favcolor is:
# 
# my_details["favcolor"]
# 
# Alternate syntax to create key, value pairs in hash:
# 
# myhash = {a: 1, b: 2, c: 3, d: 4}
# 
# But this will create symbols a, b, c and d (not strings) as keys
# 
# To access the value for key c above:
# 
# myhash[:c]
# 
# To add a key, value pair to the hash above:
# 
# myhash[:d] = 7
# 
# myhash[:name] = "Mashrur"
# 
# To delete a key, value pair simply delete the key:
# 
# myhash.delete(:d)
# 
# To list the keys in a hash, followed by values of the hash:
# 
# myhash.keys
# myhash.values
# To iterate through a hash using .each method and print out value:
# 
# myhash.each { |somekey, somevalue| puts somevalue }
# 
# To iterate through a hash using .each method and print out both key and value in friendly format:
# 
# myhash.each { |somekey, somevalue| puts "The key is #{somekey} and the value is #{somevalue}" }
# 
# To iterate through and delete a items from a hash based on a condition (in the condition below if the value is greater than 3:
# 
# myhash.each { |k, v| myhash.delete(k) if v > 3 }
# 
# Use select method to display items only if value of the item is odd
# 
# myhash.select { |k, v| v.odd? }

```