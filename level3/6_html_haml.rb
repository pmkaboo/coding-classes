#^ 6. HTML & HAML

#* basics of HTML

# We will not go deep into HTML in these lessons, but basically
# it's just a series of elements which we use to wrap different
# parts of the content on the page to make it appear, or act, in
# a certain way. For example when we want to specify that a line
# of text should stand on its own, like a paragraph, we can use
# the paragraph tag for that:

# <p>Standalone text</p>

# This whole thing is an HTML element, and it has these parts:
# <p> -> opening tag, this states where the element begins,
#        and what type it is, in this case `p` - paragraph.
# Standalone text -> content of the element, in this case it's
#                    just simple text.
# </p> -> closing tag, this states where the element ends

# Other noteworthy tags:
# - div -> doesn't do anything special, it's just used
#          as a container for other elements
# - hX -> header X, X can be 1-7, similarly to `p` it makes its
#         content stand on its own, and also resizes it

#* attributes

# Elements can also have attributes, which contain additional
# information that we don't want to appear in the content.
# The two most common attributes are `class` and `id`, and they
# act as identifiers that allow us to target the element with
# style information and other things. The difference between them
# is that `id` should be unique in a single page, while `class`
# can be shared by multiple elements. Attributes are defined
# inside the opening tag in the following way:

# <div id="unique-identifier" class="one-class other-class">Text</div>

#* void elements

# Elements that don't have any content also don't need a closing tag,
# and they are called void elements. They look like this:

# <img src="path/to/image.png" alt="Test image" />

#* nesting

# It's possible to put (nest) elements inside of other elements:

# <p>Word in <strong>bold</strong></p>

# Just be carefult with the opening and closing tags when nesting,
# if in the above example the closing tag `strong` was after the closing
# tag `p`, then the browser would be just guessing what that means
# and it could lead to unexpected results.

#* embedded ruby

# We can embed ruby code inside of our HTML with a special tag:

# <%= "This is ruby string" %>

# Whatever is returned by the code inside the `%=` tag will be
# inserted into the HTML as a simple text:

# <div class="<%= item.available? ? 'available' : 'unavailable' %>">...
# <div>Item description: <%= item.description %></div>

# If we want to just run some ruby code, but we don't want to include
# the result in the HTML, then we can use `%` tag, without the `=` sign:

# <% items.each do |item| %>
#   <div>Item name: <%= item.name %></div>
# <% end %>

#* HTML to HAML

# Opening tags in haml are prefixed with `%` sign,
# content is divided from opening tag with a space,
# and there are no closing tags:

# HTML:
# <p>Some Text</p>

# HAML:
# %p Some text

# ------------------

# Attributes have the same syntax as ruby hashes

# HTML:
# <div class="some-class">Text</div>

# HAML:
# %div{class: 'some-class other-class'} Text

# ------------------

# `id` and `class` attributes also be simplified
# by using the `#` and `.` symbols respectively:

# %div{class: 'some-class other-class', id: 'unique-id'} Text

# this is the same as

# %div#unique-id.some-class.other-class Text

# ------------------

# Also `div` is considered a default tag, so it can be omitted

# %div.class1

# this is the same as

# .class1

# ------------------

# One huge advantage of HAML is that it's impossible to have
# incorrect nesting, because we're not dealing with closing
# tags at all, and instead use indentation:

# HTML:
# <div id="parent">
#   <div class="child">Child 1</div>
#   <div class="child">Child 2</div>
# </div>

# HAML:
# #parent
#   .child Child 1
#   .child Child 1

# ------------------

# Embedding ruby works similarly to HTML, we just use the
# `=` sign when we want the result to be rendered, and the
# `-` sign when we don't want it to be rendered:

# HTML:
# <% items.each do |item| %>
#   <div class="item">Item name: <%= item.name %></div>
# <% end %>

# HAML:
# - items.each do |item|
#   .item
#     Item name:
#     = item.name

# Also we don't need to write `end`. The same way the
# indentation is used to determine where the tags are
# ending, it's also used to determine where blocks
# of ruby code are ending.