#^ 3. Controllers

# Controllers are located in 'app/controllers',
# their name is generally in plural - items,
# posts, ... - and always has the suffix '_controller'.

# We can create them either manually - by
# creating the file and writing the code for
# the class.

# Or we can use one of many generators# that
# rails provides:
# `rails generate controller ControllerName`
# Kepp in mind that these generators usually also
# create some extra stuff that we might not need.

#* actions

# Action is just a different name for methods
# inside a rails controller. Each controller
# can have multiple actions - items#new, items#edit
# items#destroy, ...

#~ exercise:
# -> create `Home` controller with `index` action
