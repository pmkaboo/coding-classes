#^ 11. CRUD

# CRUD are the 4 basic operations we can peform
# with database records - create, read, update, delete.
# Large part of the work done in web applications
# involves these operations, and because of that
# rails provides many features that make it simple.

#* routes 2

# When we're receiving a request, we are also
# receiving some parameters with it, which are
# accessible with the `params` method in the
# controller action. It's a special hash which
# by default contains keys `controller` and `action`.
# The browser/server making the request can send
# more params, and it's also possible to add more
# on our end. For example we can designate a part
# of the url to be read as a parameter:

#$ get 'items/:id', to: 'items#show'

# Now if we make a request to `http://localhost:3000/items/1`
# we will see `id: '1'` in the params.

#~ exercise:
# - add a new view that shows the title and body of
#   a single post

#* resources

# So far we've covered the R of CRUD, eventually we
# will get to C, U and D aswell, and you probably
# can already guess that we will be adding more new
# routes, views and actions to do so. And when we have
# a combination of routes, views and actions that
# work together to perform the CRUD operations on
# an entity, we call that entity a resource. For
# example in our application a post is a resource.

# Rails provides a routes method `resources` that
# maps all of the conventional routes for a collection
# of resources:

#$ resources :items

# This will create routes for:
#   - index - get list of items
#   - show - get one specific item
#   - new - get form for creating a new item
#   - create - post action for creating a new item
#   - edit - get form for editing an item
#   - update - patch/put action for updating an item
#   - destroy - delete action for deleting an item

# If we dont need all of those actions, we can pass
# only or except option to the resources method:

#$ resources :items, only: [:index]
# This creates only the route for the index action

#$ resources :items, except: [:index]
# This creates all of the above mentioned routes,
# except the one for the index action

# We can inspect the current mapping of routes with
# command:

#$ rails routes
# We can also use the terminal command `grep` to filter
# the results - this would work with any command that
# just prints text to the terminal

#$ rails routes | grep 'controller name'
# This will only show lines that contain
# the phrase 'controller name

#~ exercise:
# - replace the `get` routes for posts with `resources`

#* path helpers

# When we use the `resources` method to create the routes,
# rails will also create path helper methods that we can
# use to keep our code from depending on specific route
# configuration. For example:
#$ posts_path => '/posts'
#$ post_path(post) => "/posts/#{post.id}"

#* `link_to`

# `link_to` is another helper method provided by rails,
# and it's a shortcut for creating links. It takes two
# arguments, first is the text that should be displayed,
# and second is the links destination.

# Instead of giving it some string as url, we can use the
# path helper:

#$ link_to item.name, item_path(item)

# And it's also possible to use the record itself as the
# second argument, in which case rails will automatically
# call the appropriate path helper to convert the record
# into a path:

#$ link_to item.name, name

#~ exercise:
# - in posts index view, add a link to each individual post
