#^ CRUD

# CRUD are the 4 basic operations we can peform
# with database records - create, read, update, delete.
# Large part of the work done in web applications
# involves these operations, and because of that
# rails provides many features that simplify the code.

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

# - get 'items/:id', to: 'items#show'

# Now if we make a request to `http://localhost:3000/items/1`
# we will see `id: '1'` in the params.

#~ exercise:
# - add a new view that shows the title and body of
#   a single article