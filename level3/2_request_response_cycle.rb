#^ 2. Request-Response Cycle

# When developing a rails app,
# the request-response cycle can
# help to see how all the files
# and folder fit together. It
# traces how a request flows through
# the application, and understanding
# it will be helpful when we will
# try to figure out which files we
# need to edit when making changes,
# or where to look when things aren't
# working as expected.

#* How it works:

# 1. User opens their browser, types
#    in a url and presses enter - or
#    clicks on a link/button
# 2. Browser makes a request for that url
# 3. The request hits rails router
# 4. The router maps the url to the correct
#    controller and action that will handle the request
# 5. The action receives the request and
#    passes it on to the view
# 6. The view renders the page as HTML
# 7. The controller sends the HTML
#    back to the browser in response
# 8. Browser shows the page to the user

# Looking at this we need 3 parts to
# build a rails app:

# 1. controller
# 2. route
# 3. view
