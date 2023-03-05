#^ 9. Console

# The rails console is an interactive
# coding environment, similar to `irb`,
# but it automatically loads rails and
# our application code. We can start
# the console with:

# `rails console`

# Inside the console we can run any code
# like in irb, but since rails and our
# app is loaded aswell, we can also work
# with our models and other classes from
# our app:

post = Post.new(title: 'Post#1', body: 'This the first post')

# Calling `new` on a model with create a new instance
# of that model, but this instance is not yet saved
# in the database. To save the instance we must call
# `save`:

post.save

# Now if we look at the `post` object again, we will
# see that it's attributes `id`, `created_at`
# and `updated_at` have been set - rails did this when
# we saved the object.

# If we wanted to fetch this object from the database,
# we would use the method `find` with the `id` as an
# argument:

post = Post.find(1)

# If we wanted to fetch all posts, we would use the
# method `all`

posts = Post.all

# This method returns `ActiveRecord::Relation` object,
# which is kinda like an array, but with a few more
# functionalities.

#~ exercise:
# - in the console create a few posts
# - try using `Post.create`
