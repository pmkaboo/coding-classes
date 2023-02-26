#^ 4. Routes

# Before we can start with routes, it's important to
# talk about the multiple parts of URLs. Let's look
# at `http://localhost:3000/posts/1/edit` for example:
# `http` -> this is called url scheme and it tells
#           the browser what protocol to use when
#           making the request, it's either HTTP or HTTPS.
# `localhost` -> this is the domain, and it indicates
#                which web server is being requested.
#                It can be either domain name, or
#                an IP address. For localhost the IP
#                is 127.0.0.1
# `3000` -> this is the port, or a gate, on the server
#           that will be used to access the requested
#           resource. When it's omitted, the browser
#           will by default try to use port 80 for HTTP
#           requests and 443 for HTTPS requests. If we
#           want to use a different port, like when
#           working will local server, we need to specify it.
# `posts/1/edit` -> this is the path to the resource on
#                   the server. Resource is generally some HTML
#                   for the browser, or some file to download.

# The URL can be mapped to some controller action in rails router,
# which we can edit in:
# - `/config/routes.rb`

# There are multiple ways how we can map the urls, so let's start
# with 2 basic ones:

# `root 'items#index'` - this will map the root path of our
#    application to the index action of the items controller.
#    Root path is simply '/', the full url
#    would be 'http://localhost:3000/'.

# `get '/', to: 'items#index'` -> this will do the same thing
#    as above, but provides more flexibility, as we can specify
#    the path to whatever we want.

#~ exercise:
# -> map the root path to the index action of the Home controller
