#^ 5. Views

# View is the HTML template the controller action will render
# and send back in response to the browsers request.

# Views are located in 'app/views', and then further nested
# in folder that has the same name as the corresponding controller,
# and then the files are named the same as the actions of that
# controller:
# - app/views
#   - items
#     - index.html.erb
#     - new.html.erb
#     - edit.html.erb

#* HAML

# Since pure HTML is quite verbose, we will be using HAML instead,
# which removes the need for closing tags by enforcing proper
# nesting -> which results in nice clean code.
# HAML is not supported by default, so first we will need to open
# 'Gemfile' and add this line to it:

# `gem 'haml'`

# and then we need to install it by running `bundle install`.
# To use HAMl, we simply change the extension of the view files from
# '.html.erb' to '.haml'.

#~ exercise:
# -> create a view for the index action of the Home controller
#    with this code: `%h1 Hello world!`
